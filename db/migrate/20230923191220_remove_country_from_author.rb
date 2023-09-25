class RemoveCountryFromAuthor < ActiveRecord::Migration[7.0]
  def change
    remove_column :authors, :country, :string
  end
end
