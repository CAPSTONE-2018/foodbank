class User < ActiveRecord::Base
    has_secure_password 
    validates :first_name, :last_name, :email, presence: true
    validates :password, length: {minimum: 4 }
    validates :password, length: {maximum: 14 }
    validates :email, uniqueness: true
   
end