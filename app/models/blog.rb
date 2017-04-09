class Blog < ApplicationRecord
  has_many :categoryblogs
  has_many :categories, through: :categoryblogs
end
