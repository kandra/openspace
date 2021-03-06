class Event < ActiveRecord::Base
  has_many :sessions
  has_many :locations
  has_many :agendas
  validates_presence_of :name
  
  def to_param
    "#{id}-#{name.parameterize}"
  end
    
end
