class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.references :company, null: true, foreign_key: true
      t.string :name
      t.integer :from_year
      t.integer :to_year
      t.text :summary
      t.text :challenge
      t.text :resolution
      t.text :code_url
      t.text :live_url

      t.timestamps
    end
    add_index :projects, :from_year
    add_index :projects, :to_year
  end
end
