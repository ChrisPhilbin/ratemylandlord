class AddTenantIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :tenant_id, :integer
  end
end
