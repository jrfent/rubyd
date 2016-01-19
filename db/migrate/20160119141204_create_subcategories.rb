class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name
      t.string :description
      t.string :slug
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
