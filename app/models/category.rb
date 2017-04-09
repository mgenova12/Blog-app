class Category < ApplicationRecord
  has_many :categoryblogs
  has_many :blogs, through: :categoryblogs
end
