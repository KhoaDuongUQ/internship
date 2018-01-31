class DropImagesFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :images
  end
end
