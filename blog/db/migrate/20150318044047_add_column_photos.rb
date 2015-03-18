class AddColumnPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :savepath, :string
    change_column :photos, :path, :string
    rename_column :photos, :title, :name
  end
end
