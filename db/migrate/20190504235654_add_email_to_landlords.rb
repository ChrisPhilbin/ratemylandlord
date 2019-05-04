class AddEmailToLandlords < ActiveRecord::Migration[5.2]
  def change
    add_column :landlords, :email, :string
  end
end
