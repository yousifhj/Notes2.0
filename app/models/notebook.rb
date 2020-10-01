class Notebook < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has many :users 
  has_many :users though :comments
end
