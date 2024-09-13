class AddCurrencyToPorts < ActiveRecord::Migration[7.1]
  def change
    add_column :ports, :currency, :string
  end
end
