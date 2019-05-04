class CreateLandlords < ActiveRecord::Migration[5.2]
  def change
    create_table :landlords do |t|
      t.text :firstname
      t.text :lastname

      t.timestamps
    end
  end
end
