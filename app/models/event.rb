class Event < ActiveRecord::Base

  validates :title, presence: true
  validates :capacity, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :cuisine, presence: true
  validates :event_date, presence: true

  belongs_to :user
  has_many :registrations
  has_many :comments


end