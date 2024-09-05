class CreatePorts < ActiveRecord::Migration[7.1]
  def change
    create_table :ports do |t|
      t.string :address
      t.string :city
      t.string :country
      t.decimal :latitude, precision: 12, scale: 9
      t.decimal :longitude, precision: 12, scale: 9
      t.string :image_url

      t.timestamps
    end
  end
end
