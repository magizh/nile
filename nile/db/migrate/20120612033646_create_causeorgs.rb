class CreateCauseorgs < ActiveRecord::Migration
  def change
    create_table :causeorgs do |t|
      t.integer :cause_id
      t.integer :org_id

      t.timestamps
    end
  end
end
