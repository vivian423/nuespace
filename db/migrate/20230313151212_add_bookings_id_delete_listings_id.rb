class AddBookingsIdDeleteListingsId < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :listing, foreign_key: true
    add_reference :reviews, :booking, foreign_key: true
  end
end
