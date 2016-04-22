class Event < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user

  enum type: [:meetup, :workshop, :evento]
end
