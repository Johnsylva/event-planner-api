class Event < ApplicationRecord
  has_many :registrations
  has_many :attendees, through: :registrations

  def attendees
    registrations.map do |registration |
      registration.attendee
    end
  end
end
