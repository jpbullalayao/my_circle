class CreateBlogPosts < ActiveRecord::Migration
  def up
    create_table :blog_posts do |t|
      t.text :content, null: false

      t.timestamps null: false
    end
  end

  def down
    drop_table :blog_posts 
  end
end
