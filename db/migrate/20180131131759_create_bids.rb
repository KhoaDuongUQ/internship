class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.decimal :price
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
