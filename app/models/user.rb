require 'bcrypt'

class User < ActiveRecord::Base 

	include BCrypt

	has_many :events
	has_many :registrations
	
end