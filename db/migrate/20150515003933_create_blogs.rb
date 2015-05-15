class CreateBlogs < ActiveRecord::Migration
  def up
    create_table :blogs do |t|
      t.string :title, null: false
      t.string :sub_title, null: false
      t.timestamps null: false
    end
  end

  def down
  	drop_table :blogs
  end
end
