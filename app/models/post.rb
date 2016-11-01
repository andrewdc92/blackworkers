class Post < ApplicationRecord
  has_many :users
  has_many :artists
  belongs_to :user, optional: true
  belongs_to :artist, optional: true
end
