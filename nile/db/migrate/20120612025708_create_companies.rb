class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url
      t.decimal :income
      t.decimal :charity

      t.timestamps
    end
  end
end
