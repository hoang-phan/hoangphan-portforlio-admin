class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :from_year
      t.integer :to_year
      t.string :location
      t.string :title

      t.timestamps
    end
    add_index :companies, :from_year
    add_index :companies, :to_year
  end
end
