class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :post_id, :user_id, presence: true
  validates_uniqueness_of :post_id, { scope: :user_id }

end
