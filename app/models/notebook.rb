class Notebook < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has many :comments
  has_many :users though: :comments
end
