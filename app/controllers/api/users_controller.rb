class  Api::v1::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_participation, only: [:show, :edit, :update, :destroy]

  # GET /participations
  # GET /participations.json
  def index
    users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new

  end

  # GET /users/1/edit
  def edit
  end

  # user /users
  # user /users.json
  def create
    @user = User.new(User_params)

    respond_to do |format|
      if  @user.save
        format.json { render :show, status: :created }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.json { render :show, status: :ok }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params
        .require(:user)
        .permit(:subject)
  end

end