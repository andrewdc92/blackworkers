class Favorite < ApplicationRecord
  belongs_to :favorited, polymorphic: true
  belongs_to :user

end
