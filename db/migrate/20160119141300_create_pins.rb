class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :description
      t.integer :listing_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
