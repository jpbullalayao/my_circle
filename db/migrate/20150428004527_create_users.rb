class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :num_connections

      t.timestamps null: false
    end
  end

  def down 
    drop_table :users
  end

end
