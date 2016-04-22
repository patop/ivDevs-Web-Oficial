class Event < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user

  enum type_event: [:meetup, :workshop, :evento]
end
