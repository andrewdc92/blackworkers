class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :favorites
  has_many :favorite_posts, through: :favorites, source: :favorited, source_type: 'Posts'
  validates :full_name, presence: true
  validates :email, presence: true, uniqueness: true

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
