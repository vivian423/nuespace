class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :listing_name
      t.string :listing_address
      t.string :listing_amenities
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
