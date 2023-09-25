class AddCountryToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_reference :authors, :country, foreign_key: true
  end
end
