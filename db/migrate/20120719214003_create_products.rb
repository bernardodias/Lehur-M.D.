class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :category
      t.references :subcategory
      t.string :maker
      t.string :dimension
      t.text :description

      t.timestamps
    end
    add_index :products, :category_id
    add_index :products, :subcategory_id
  end
end
