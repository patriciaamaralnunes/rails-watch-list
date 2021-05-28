class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true
  validates :list, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }
end
