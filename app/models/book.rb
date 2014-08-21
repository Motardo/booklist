class Book < ActiveRecord::Base
  include ActionView::Helpers::DateHelper
  belongs_to :author
  after_initialize :defaults

  def defaults
    #self.read_date ||= Time.now
    if self.author_id
      author = Author.find(self.author_id)
      self.auth = author.last_name[0..3].titleize
    end
  end

  def read
    if self.read_date
      time_ago_in_words(self.read_date) + " ago"
    else
      "Not yet"
    end
  end
end
