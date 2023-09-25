class CreateLibs < ActiveRecord::Migration[7.0]
  def change
    create_table :libs do |t|
      t.references :country, foreign_key: true
      t.string :name
      t.string :city
      t.string :street

      t.timestamps
    end
  end
end
