class CreateComporgs < ActiveRecord::Migration
  def change
    create_table :comporg do |t|
      t.integer :comp_id
      t.integer :org_id

      t.timestamps
    end
  end
end
