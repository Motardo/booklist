class Author < ActiveRecord::Base
  validates :firstName, :lastName, presence: true
  has_many :books

  def last_read
    id = self.id
    book = Book.where("author_id = ?", id).order("readDate desc").first
    return book.readDate
  end
end
