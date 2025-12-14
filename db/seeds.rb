# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Attendee.create!(name: "Alice Johnson", email: "alice@example.com")
Attendee.create!(name: "Bob Smith", email: "bob@example.com")
Attendee.create!(name: "Charlie Davis", email: "charlie@example.com")

Event.create!(name: "Tech Conference 2025", location: "New York", date: Date.new(2025, 5, 10))
Event.create!(name: "Music Festival", location: "Los Angeles", date: Date.new(2025, 7, 15))
Event.create!(name: "Startup Pitch Night", location: "San Francisco", date: Date.new(2025, 9, 20))

Registration.create!(attendee_id: 1, event_id: 1)
Registration.create!(attendee_id: 1, event_id: 2)
Registration.create!(attendee_id: 2, event_id: 2)
Registration.create!(attendee_id: 3, event_id: 3)
Registration.create!(attendee_id: 2, event_id: 1)
Registration.create!(attendee_id: 3, event_id: 1)