class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.integer :sweet_id
      t.integer :vendor_id

      t.timestamps
    end
  end
end
