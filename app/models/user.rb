require 'bcrypt'

class User < ActiveRecord::Base 
  validates :name, presence: true
  validates :email, presence: true
  validates :password_hash, presence: true

	include BCrypt

	has_many :events
	has_many :registrations
	has_many :comments
	
end