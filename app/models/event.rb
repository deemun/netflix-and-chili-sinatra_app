class Event < ActiveRecord::Base

belongs_to :user
has_many :registrations
has_many :comments


end