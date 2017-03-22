class Conversation < ActiveRecord::Base
  has_many :participations
  has_many :messages
end
