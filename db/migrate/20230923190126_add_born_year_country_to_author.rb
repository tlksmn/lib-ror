class AddBornYearCountryToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :year, :integer
    add_column :authors, :country, :string
  end
end
