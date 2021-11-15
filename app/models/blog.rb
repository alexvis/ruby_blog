class Blog < ApplicationRecord

  validates :title, presence: true
  validates :comment, presence: true
  validates :user_id, presence: true

  # belongs_to :user
end
