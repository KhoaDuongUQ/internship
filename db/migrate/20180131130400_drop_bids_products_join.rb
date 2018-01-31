class DropBidsProductsJoin < ActiveRecord::Migration[5.1]
  def change
    drop_table :bids_products
  end
end
