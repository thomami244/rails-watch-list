class Movie < ApplicationRecord
  has_many :bookmarks
  before_destroy :check_for_bookmarks

  validates :title, :overview, presence: true
  validates :title, :overview, uniqueness: true

  # before_destroy :check_mail_address_presence
  private
  def check_for_bookmarks
    return false if bookmarks.exists?
  end

  # private
  # def check_for_boomarks
  #   if bookmarks.count > 0
  #     errors.add_to_base("cannot delete movie while bookmarks exist")
  #     return false
  #   end
end
