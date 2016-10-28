class User < ApplicationRecord
  has_secure_password
  validates :full_name, presence: true
  validates :email, presence: true, uniqueness: true

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
