class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :geo
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
