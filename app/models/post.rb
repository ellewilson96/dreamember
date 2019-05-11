class Post < ApplicationRecord
  belongs_to :user
  has_many :comments


  validates :body, presence: true
  validates :user, presence: true
  validates :title, presence: true
end
