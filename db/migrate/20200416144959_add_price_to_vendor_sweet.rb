class AddPriceToVendorSweet < ActiveRecord::Migration[5.1]
  def change
    add_column :vendor_sweets, :price, :integer
  end
end
