class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :subject
      t.text :participants, array: true, default: []
      t.text :messages, array: true, default: []
      t.timestamps null: false
    end
  end
end
