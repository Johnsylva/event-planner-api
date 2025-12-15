class Attendee < ApplicationRecord
  has_many :registrations
  has_many :events, through: :registrations

  def events
    registrations.map do |registration|
      registration.event
    end
  end
end
