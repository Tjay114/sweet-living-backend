class Seller < ApplicationRecord
    # Associations btween property and seller
    has_many :properties, dependent: :destroy 
    has_many :buyers, through: :properties

    # has_secure_password
end
