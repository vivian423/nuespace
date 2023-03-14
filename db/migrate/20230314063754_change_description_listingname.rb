class ChangeDescriptionListingname < ActiveRecord::Migration[7.0]
  def change
    rename_column :listings, :description, :listing_description
  end
end
