class User < ApplicationRecord
  has_many :achievements
  has_many :sessions
end
