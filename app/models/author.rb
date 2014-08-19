class Author < ActiveRecord::Base
  validates :firstName, :lastName, presence: true
  has_many :books
end
