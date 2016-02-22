class UserOrganization < ActiveRecord::Base
    validates :category_location, presence: true, length: { maximum: 51 }
    validates :profile, presence: true, length: { maximum: 51 }
    validates :name, presence: true, length: { maximum: 100 }
    validates :description, presence: true
end
