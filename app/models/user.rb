class User < ActiveRecord::Base
    has_secure_password 
    has_many :milestones
    validates :email, uniqueness: true
    validates :email, presence: true
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :occupation, presence: true
    validates :password_digest, presence: true
end 