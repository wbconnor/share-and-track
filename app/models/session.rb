class Session < ApplicationRecord
  has_many :achievements
  belongs_to :user
end
