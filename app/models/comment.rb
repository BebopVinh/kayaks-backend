class Comment < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :trip


end


# validates :title, presence: true
#  belongs_to :project, inverse_of: :tasks
