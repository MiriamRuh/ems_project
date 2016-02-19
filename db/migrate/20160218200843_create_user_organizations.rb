class CreateUserOrganizations < ActiveRecord::Migration
  def change
    create_table :user_organizations do |t|
      t.string :category_location
      t.string :profile
      t.string :name
      t.string :description
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
