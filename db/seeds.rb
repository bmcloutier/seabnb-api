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

Port.create(address: "22 Jump St", city: "New York City", country: "United States", latitude: 40.730610, longitude: -73.935242, image_url: "test.jpg", currency: "USD")
Port.create(address: "22 Jump St", city: "Boston", country: "United States", latitude: 42.36026, longitude: -71.05728, image_url: "test.jpg", currency: "USD")
Port.create(address: "22 Jump St", city: "Savannah", country: "United States", latitude: 32.076176, longitude: -81.088371, image_url: "test.jpg", currency: "USD")
Port.create(address: "22 Jump St", city: "Miami", country: "United States", latitude: 25.77084, longitude: -80.19764, image_url: "test.jpg", currency: "USD")
Port.create(address: "22 Jump St", city: "Montego Bay", country: "Jamaica", latitude: 18.46887, longitude: -77.92166, image_url: "test.jpg", currency: "JMD")
Port.create(address: "22 Jump St", city: "São Luís", country: "Brazil", latitude: -2.49976, longitude: -44.22040, image_url: "test.jpg", currency: "BRL")

Port.create(address: "22 Jump St", city: "Reykjavík", country: "Iceland", latitude: 64.14760, longitude: -21.93862, image_url: "test.jpg", currency: "ISK")
Port.create(address: "22 Jump St", city: "Galway", country: "Ireland", latitude: 53.27594, longitude: -9.04239, image_url: "test.jpg", currency: "EUR")
Port.create(address: "22 Jump St", city: "Bordeaux", country: "France", latitude: 44.83807, longitude: -0.57777, image_url: "test.jpg", currency: "EUR")
Port.create(address: "22 Jump St", city: "Lisbon", country: "Portugal", latitude: 38.70784, longitude: -9.13889, image_url: "test.jpg", currency: "EUR")
Port.create(address: "22 Jump St", city: "Casablanca", country: "Morocco", latitude: 33.57375, longitude: -7.59974, image_url: "test.jpg", currency: "MAD")
Port.create(address: "22 Jump St", city: "Dakar", country: "Senegal", latitude: 14.72117, longitude: -17.44774, image_url: "test.jpg", currency: "XOF")
Port.create(address: "22 Jump St", city: "Cape Town", country: "South Africa", latitude: -33.92202, longitude: 18.41958, image_url: "test.jpg", currency: "ZAR")

Vessel.create(name: "Big Kahuna", length: 100, propulsion: "Deisel", max_distance: 2800, daily_distance: 300, daily_price: 129.99, amenities: "Ballroom", image_url: "https://www.yachtsinternational.com/.image/t_share/MTQ2NDM4NTc5ODk2NzIyOTI1/hatteras100rph-profile.jpg", port_id: 1)
Vessel.create(name: "Wavecutter", length: 50, propulsion: "Deisel/Sail", max_distance: 900, daily_distance: 150, daily_price: 89.99, amenities: "Smooth ride", image_url: "https://bettersailing.com/wp-content/uploads/2021/02/Best-Sailboats-Over-60-Feet-960x540.jpg", port_id: 1)
Vessel.create(name: "The Comet", length: 75, propulsion: "Deisel", max_distance: 1500, daily_distance: 250, daily_price: 109.99, amenities: "Life vests", image_url: "https://www.yachtopolis.com/media/79276/5_FULL.jpg", port_id: 1)
Vessel.create(name: "Badonkadonk", length: 200, propulsion: "Deisel", max_distance: 3200, daily_distance: 310, daily_price: 189.99, amenities: "Pool", image_url: "http://www.yachtify.me/wp-content/gallery/mega-yahta-double-century/Double-Century.jpg", port_id: 2)
Vessel.create(name: "Knives Edge II", length: 100, propulsion: "Sail", max_distance: 3200, daily_distance: 280, daily_price: 139.99, amenities: "Nice captain", image_url: "https://www.fraseryachts.com/uploads/241018_Shenandoah_StuartPearce_Main_L175_1024.jpg", port_id: 2)
Vessel.create(name: "Polaris V", length: 60, propulsion: "Deisel/Electric", max_distance: 3200, daily_distance: 240, daily_price: 89.99, amenities: "Sundeck", image_url: "http://marineindustrynews.co.uk/wp-content/uploads/2020/02/SY60_Exterior_View3.jpg", port_id: 2)
Vessel.create(name: "AdventureTime", length: 150, propulsion: "Deisel", max_distance: 3200, daily_distance: 300, daily_price: 149.99, amenities: "Grill", image_url: "https://sysyachtsales.com/wp-content/uploads/2018/07/Used-Yachts-For-Sale-From-161-To-200-Feet.jpg", port_id: 3)
Vessel.create(name: "Crooked Courtesan", length: 55, propulsion: "Deisel/Sail", max_distance: 3200, daily_distance: 250, daily_price: 119.99, amenities: "Fluffy pillows", image_url: "https://images.boatsgroup.com/resize/1/29/98/8632998_20221220071418600_1_XLARGE.jpg", port_id: 3)
Vessel.create(name: "Royal Flush", length: 135, propulsion: "Deisel", max_distance: 3200, daily_distance: 290, daily_price: 139.99, amenities: "Juice bar", image_url: "https://www.jamesedition.com/stories/wp-content/uploads/2020/11/6b.jpg", port_id: 4)
Vessel.create(name: "The Diamondback", length: 80, propulsion: "Deisel", max_distance: 3200, daily_distance: 275, daily_price: 149.99, amenities: "Free wifi", image_url: "https://www.rjcyachts.com/photos/articles/ext-2.jpg", port_id: 5)
Vessel.create(name: "Shanghi Star", length: 80, propulsion: "Sail", max_distance: 3200, daily_distance: 260, daily_price: 89.99, amenities: "DVD player", image_url: "https://bettersailing.com/wp-content/uploads/2021/02/Best-Sailboats-Over-60-Feet-960x540.jpg", port_id: 6)
Vessel.create(name: "Reefer Madness", length: 60, propulsion: "Deisel/Sail", max_distance: 3200, daily_distance: 250, daily_price: 69.99, amenities: "Continental breakfast", image_url: "https://maitaicharters.com/wp-content/uploads/2021/08/catamaran.png", port_id: 7)
Vessel.create(name: "Vicious Viking", length: 70, propulsion: "Deisel", max_distance: 3200, daily_distance: 250, daily_price: 99.99, amenities: "Fishing gear", image_url: "https://cdn.yachtbroker.org/images/highdef/2787893_3c7d2b31_82.jpg", port_id: 8)
Vessel.create(name: "Shirley", length: 35, propulsion: "Sail", max_distance: 400, daily_distance: 100, daily_price: 49.99, amenities: "Cozy cabins", image_url: "https://www.sailboat-cruising.com/images/seahawk-cruising-yachts-moo.jpg", port_id: 9)
Vessel.create(name: "Scrappy Doo", length: 45, propulsion: "Deisel/Sail", max_distance: 500, daily_distance: 100, daily_price: 59.99, amenities: "Incredible confidence", image_url: "https://cdn.yachtbroker.org/images/highdef/2796736_e5b54415.jpg", port_id: 10)
Vessel.create(name: "Epsilon", length: 140, propulsion: "Deisle/Sail", max_distance: 3000, daily_distance: 300, daily_price: 139.99, amenities: "Life boats", image_url: "https://www.yachtsinternational.com/.image/t_share/MTc2MTQxOTEzODk4OTUyMTA1/03_oceanic-140_3-4.jpg", port_id: 11)
Vessel.create(name: "Gnarly Gnightengale", length: 30, propulsion: "Sail", max_distance: 400, daily_distance: 100, daily_price: 39.99, amenities: "Surly captain", image_url: "https://waterbornemag.com/wp-content/uploads/2018/08/Cape-Dory-30.jpg", port_id: 12)

Booking.create(user_id: 1, vessel_id: 2, port_start_id: 1, port_end_id: 9, start_date: "2025-01-01")
Booking.create(user_id: 1, vessel_id: 6, port_start_id: 2, port_end_id: 7, start_date: "2025-03-15")
Booking.create(user_id: 2, vessel_id: 8, port_start_id: 3, port_end_id: 10, start_date: "2025-02-25")
