class CreateCompanies < ActiveRecord::Migration
  def up
    create_table :companies do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :description
      t.string :website

      t.timestamps null: false
    end
  end

  def down 
    drop_table :companies
  end
end
