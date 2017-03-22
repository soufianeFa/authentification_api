class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.belongs_to :converation, index: true
      t.belongs_to :user, index: true
      # t.integer :utilisateur
      # t.integer :conversation
      t.boolean :isOwner
      t.timestamps null: false
    end
  end
end
