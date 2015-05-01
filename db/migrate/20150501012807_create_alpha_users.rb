class CreateAlphaUsers < ActiveRecord::Migration
  def up
    create_table :alpha_users do |t|
    	t.string :name
    	t.string :email
      t.timestamps null: false
    end
  end

  def down
    drop_table :alpha_users
  end
end
