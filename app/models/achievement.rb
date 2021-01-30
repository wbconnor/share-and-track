class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :sessions
end
