class Event < ActiveRecord::Base
  #geocoder
  geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
  # asociaciones
  belongs_to :tag
  belongs_to :user



  enum type_event: [:meetup, :workshop, :evento]
end
