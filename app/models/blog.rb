class Blog < ApplicationRecord
  # belongs_to :category, optional: true 
  has_many :categoryblogs
  has_many :categories, through: :categoryblogs
end
