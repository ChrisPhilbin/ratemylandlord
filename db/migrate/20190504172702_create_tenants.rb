class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|
      t.text :username

      t.timestamps
    end
  end
end
