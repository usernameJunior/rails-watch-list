class Movie < ApplicationRecord
  has_many :bookmarks

  before_destroy :check_for_bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true

  private

  def check_for_bookmarks
    return false if bookmarks.count.positive?

    true
  end
end
