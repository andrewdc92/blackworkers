class Post < ApplicationRecord
  # has_many :users
  belongs_to :artist
  belongs_to :user, optional: true
  has_many :favorites, as: :favorited
  has_many :fans, through: :favorites, source: :user

  def self.search(search)
    where("Instagram ILIKE ?" ,"%#{search}%")
  end
  end
