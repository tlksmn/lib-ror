class AddPersonalCodeToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :personalCode, :string
    add_column :users, :city, :string
    add_reference :users, :country,  foreign_key: true
    add_column :users, :phone, :string
    add_column :users, :live_street, :string
  end
end
