class Api::MessagesController < ApplicationController

    before_action :authenticate_user!
    before_action :set_message, only: [:show, :edit, :update, :destroy]

    # GET /messages
    # GET /messages.json
    def index
      messages = Message.all
    end

    # GET /messages/1
    # GET /messages/1.json
    def show
    end

    # GET /messages/new
    def new
      @message = Message.new

    end

    # GET /messages/1/edit
    def edit
    end

    # message /messages
    # message /messages.json
    def create
      @message = Message.new(message_params)
      respond_to do |format|
        if  @message.save
          format.json {render json: :created}
        else
          format.json {render json: "not created"}
        end
      end
    end

    # PATCH/PUT /messages/1
    # PATCH/PUT /messages/1.json
    def update
      respond_to do |format|
        if @message.update(message_params)
          format.json {render json: :created}
        else
          format.json {render json: "not created"}
        end
      end
    end

    def destroy
      @message.destroy
      respond_to do |format|
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params
          .require(:message)
          .permit(:content, :creator, :conversation )
    end

  end


