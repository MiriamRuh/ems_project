class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name 
      t.string :gender 
      t.string :address 
      t.string :zipcode 
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
  # def required_information
  #   address || zipcode == null: false 
  # end
end
