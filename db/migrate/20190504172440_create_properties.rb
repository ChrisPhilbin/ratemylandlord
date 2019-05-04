class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :address1
      t.text :address2
      t.text :city
      t.text :state
      t.integer :zip
      t.text :propertytype

      t.timestamps
    end
  end
end
