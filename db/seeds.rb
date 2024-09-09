# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(first_name: "Test", last_name: "User", email: "test@example.com", phone_number: "123-456-7890", password: "password")
User.create(first_name: "Brian", last_name: "Cloutier", email: "brian@example.com", phone_number: "123-456-7890", password: "password")

Port.create(address: "123 Main St", city: "New York", country: "United States", latitude: 40.730610, longitude: -73.935242, image_url: "test.jpg")
Port.create(address: "234 Maple Ave", city: "Boston", country: "United States", latitude: 42.36026, longitude: -71.05728, image_url: "test.jpg")
Port.create(address: "456 Second Ave", city: "Savannah", country: "United States", latitude: 32.076176, longitude: -81.088371, image_url: "test.jpg")
Port.create(address: "22 Jump St", city: "Lisbon", country: "Portugal", latitude: 38.70784, longitude: -9.13889, image_url: "test.jpg")
Port.create(address: "5566 Desert Ave", city: "Casablanca", country: "Morocco", latitude: 33.57375, longitude: -7.59974, image_url: "test.jpg")
Port.create(address: "789 Third Pl", city: "Montego Bay", country: "Jamaica", latitude: 18.46887, longitude: -77.92166, image_url: "test.jpg")

Vessel.create(name: "AdventureTime", length: 150, propulsion: "Deisel", max_distance: 3200, daily_distance: 300, daily_price: 149.99, amenities: "Pool", image_url: "https://sysyachtsales.com/wp-content/uploads/2018/07/Used-Yachts-For-Sale-From-161-To-200-Feet.jpg", port_id: 1)
Vessel.create(name: "Big Kahuna", length: 100, propulsion: "Deisel", max_distance: 2800, daily_distance: 300, daily_price: 129.99, amenities: "Ballroom", image_url: "https://www.yachtsinternational.com/.image/t_share/MTQ2NDM4NTc5ODk2NzIyOTI1/hatteras100rph-profile.jpg", port_id: 2)
Vessel.create(name: "The Comet", length: 75, propulsion: "Deisel", max_distance: 1500, daily_distance: 250, daily_price: 109.99, amenities: "Life vests", image_url: "https://www.yachtopolis.com/media/79276/5_FULL.jpg", port_id: 3)
Vessel.create(name: "Wavecutter", length: 50, propulsion: "Deisel/Sail", max_distance: 900, daily_distance: 150, daily_price: 89.99, amenities: "Fishing gear", image_url: "https://bettersailing.com/wp-content/uploads/2021/02/Best-Sailboats-Over-60-Feet-960x540.jpg", port_id: 1)
Vessel.create(name: "Shirley", length: 35, propulsion: "Sail", max_distance: 400, daily_distance: 100, daily_price: 49.99, amenities: "Nice captain", image_url: "https://www.sailboat-cruising.com/images/seahawk-cruising-yachts-moo.jpg", port_id: 1)
Vessel.create(name: "Scrappy Doo", length: 45, propulsion: "Deisel/Sail", max_distance: 500, daily_distance: 100, daily_price: 59.99, amenities: "Nice captain", image_url: "https://cdn.yachtbroker.org/images/highdef/2796736_e5b54415.jpg", port_id: 4)
Vessel.create(name: "Epsilon", length: 140, propulsion: "Deisle/Sail", max_distance: 3000, daily_distance: 300, daily_price: 139.99, amenities: "Nice captain", image_url: "https://www.yachtsinternational.com/.image/t_share/MTc2MTQxOTEzODk4OTUyMTA1/03_oceanic-140_3-4.jpg", port_id: 5)
Vessel.create(name: "Gnarly Gnightengale", length: 30, propulsion: "Sail", max_distance: 400, daily_distance: 100, daily_price: 39.99, amenities: "Nice captain", image_url: "https://waterbornemag.com/wp-content/uploads/2018/08/Cape-Dory-30.jpg", port_id: 6)

Booking.create(user_id: 1, vessel_id: 1, port_start_id: 1, port_end_id: 5, start_date: "01/01/2025")
Booking.create(user_id: 1, vessel_id: 2, port_start_id: 2, port_end_id: 4, start_date: "01/15/2025")
Booking.create(user_id: 2, vessel_id: 3, port_start_id: 3, port_end_id: 2, start_date: "02/01/2025")
