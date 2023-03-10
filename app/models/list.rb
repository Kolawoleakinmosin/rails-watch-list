class List < ApplicationRecord
  # when we are working with join table, we first have to specify
  # that it has_many through the join table and then
  # followed by the second related table
  has_one_attached :photo

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
end
