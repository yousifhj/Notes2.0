class User < ApplicationRecord
    has_many :notebooks
    has_many :comments
    has_many :commented_notebooks, through: :comments,
        source: :notebook
end