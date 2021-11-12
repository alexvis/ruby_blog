class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.string :comment, null: false
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
