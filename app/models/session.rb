class Session < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_one :location
  make_voteable
  validates_presence_of :title, :description
  
  SESSION_TYPES = ["Charla", "Conversatorio", "Workshop"]
  
end
