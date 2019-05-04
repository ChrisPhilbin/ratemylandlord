class CreateLandlordProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :landlord_properties do |t|
      t.integer :landlord_id
      t.integer :property_id

      t.timestamps null: false
    end
  end
end
