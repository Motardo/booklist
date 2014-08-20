class Author < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  has_many :books

  def last_read
    id = self.id
    book = Book.where("author_id = ?", id).order("read_date desc").first
    return book.read_date
  end

  def name
    self.first_name + " " + self.last_name
  end
end
