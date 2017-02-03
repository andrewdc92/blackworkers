class User < ApplicationRecord
  has_secure_password
  validates :full_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :posts
  has_many :favorites
  has_many :favorite_posts, through: :favorites, source: :favorited, source_type: 'Post'


end

def self.confirm(params)
  @user = User.find_by({email: params[:email]})
  @user.try(:authenticate, params[:password])
end
