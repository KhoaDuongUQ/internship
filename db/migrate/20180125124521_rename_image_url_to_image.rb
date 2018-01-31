class RenameImageUrlToImage < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :image_url, :image
  end
end
