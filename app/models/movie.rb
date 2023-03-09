class Movie < ApplicationRecord
  # when we are working with join table, we first have to specify
  # that it has_many through the join table and then
  # followed by the second related table

  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
