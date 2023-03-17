class AddPriceHoursToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :listing_price, :integer
    add_column :listings, :listing_hours, :string
  end
end
