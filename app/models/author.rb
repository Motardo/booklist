class Author < ActiveRecord::Base
  include ActionView::Helpers::DateHelper
  validates :last_name, presence: true
  has_many :books, dependent: :destroy

  # Return most recent book.read_date or nil
  def last_read
    id = self.id
    book = Book.where("author_id = ?", id).order("read_date desc").first
    if book
      book.read_date
    end
  end

  def last_read_sort
    id = self.id
    book = Book.where("author_id = ?", id).order("read_date desc").first
    date = Time.now
    if book
      if book.read_date
        date = book.read_date
      end
    end
    return date
  end

  def name
    (self.first_name + " " + self.last_name).titleize
  end

  def read
    if self.last_read
      time_ago_in_words(self.last_read) + " ago"
    else
      "Not yet"
    end
  end
end
