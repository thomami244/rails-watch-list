class Movie < ApplicationRecord

  validates :title, :overview, :poster_url, :rating, presence: true
  validates :title, :overview, uniqueness: true
end
