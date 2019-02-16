class Restaurant < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :r_name, presence: true
  validates :address, presence: true
  validates :genre, presence: true
end
