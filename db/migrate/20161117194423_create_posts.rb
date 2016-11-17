class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string  :photo, null: false
      t.string  :caption
      t.string  :location, default: 'Null Island'
      t.integer :user_id, null: false

      t.timestamps(null: false)
    end
  end
end
