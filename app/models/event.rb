class Event < ActiveRecord::Base
  #geocoder
  geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
  # asociaciones
  belongs_to :tag
  belongs_to :user
  #validaciones
  validates :title,:description,:type_event,:date_event,:hour_start,:address,  presence: true


  enum type_event: [:meetup, :workshop, :evento]
end
