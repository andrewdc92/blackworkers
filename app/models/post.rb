class Post < ApplicationRecord
  # has_many :users
  # belongs_to :user, optional: true
  belongs_to :artist
end
