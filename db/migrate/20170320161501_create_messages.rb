class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :conversation, index: true
      t.integer :creator
      t.string :content
      t.integer :conversation
      t.timestamps null: false
    end
  end
end
