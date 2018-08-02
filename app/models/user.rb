class User < ApplicationRecord
    validates :username, presence: true, uniqueness: { case_sensitive: false}, length: { minimum: 3, maximum: 20}
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: { case_sensitive: false}, format: { with: email_regex}, length: { maximum: 50}
end
