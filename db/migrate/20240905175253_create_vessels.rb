class CreateVessels < ActiveRecord::Migration[7.1]
  def change
    create_table :vessels do |t|
      t.string :name
      t.integer :length
      t.string :propulsion
      t.integer :max_distance
      t.integer :daily_distance
      t.decimal :daily_price, precision: 7, scale: 2
      t.string :amenities
      t.string :image_url
      t.integer :port_id

      t.timestamps
    end
  end
end
