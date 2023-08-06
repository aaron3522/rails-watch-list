class Bookmark < ApplicationRecord
  validates :movie, presence: true
  validates :list, presence: true
  belongs_to :movie
  belongs_to :list
end
