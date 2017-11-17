class Item < ActiveRecord::Base
  belongs_to :user
  has_many :bids

  validates :name, presence: true
  validates :condition, presence: true
  validates :description, presence: true
end
