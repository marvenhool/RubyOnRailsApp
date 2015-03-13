class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :describe
      t.float :price
      t.string :status
      t.integer :count
      t.date :discountdl

      t.timestamps
    end
  end
end
