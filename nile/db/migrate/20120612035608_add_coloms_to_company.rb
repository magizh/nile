class AddColomsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :profit, :integer
    add_column :companies, :ratio, :integer
  end
end
