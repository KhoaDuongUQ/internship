class RenameImageToImages < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :image, :images
  end
end
