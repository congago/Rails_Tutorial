class Comment < ApplicationRecord
  belongs_to :entry
  default_scope -> { order(created_at: :desc) }
  validates :entry_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
