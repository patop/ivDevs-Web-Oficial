class Event < ActiveRecord::Base
  belongs_to :teg
  belongs_to :user
end
