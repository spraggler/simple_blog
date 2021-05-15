class Post < ApplicationRecord
  validates :title, :blog, presence: true
  has_many :comments, dependent: :destroy
end
