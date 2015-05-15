class CreateBlogComments < ActiveRecord::Migration
  def up
    create_table :blog_comments do |t|
      t.text :content, null: false

      t.timestamps null: false
    end
  end

  def down 
    drop_table :blog_comments
  end
end
