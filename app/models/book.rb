class Book < ApplicationRecord
  validates :author, :categories, :publisher, :title, :presence => true
  validates :lastCheckedOutBy, :presence => true, on: :update
end
