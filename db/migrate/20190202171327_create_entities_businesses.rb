class CreateEntitiesBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :entities_businesses do |t|
      t.string :business_number
      t.string :name

      t.timestamps
    end
  end
end
