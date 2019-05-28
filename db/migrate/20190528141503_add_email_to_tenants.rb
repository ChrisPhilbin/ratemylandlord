class AddEmailToTenants < ActiveRecord::Migration[5.2]
  def change
    add_column :tenants, :email, :string
  end
end
