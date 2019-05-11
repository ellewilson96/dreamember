class Comment < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :post
  
  validates :content, presence: true
end
