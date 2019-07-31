class Comment < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :trip, inverse_of: :comments

  validates :content, presence: true
end

# 
# validates :title, presence: true
#  belongs_to :project, inverse_of: :tasks
