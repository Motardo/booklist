class Book < ActiveRecord::Base
  belongs_to :author
  after_initialize :defaults

  def defaults
    self.read_date ||= Time.now
    if self.author_id
      author = Author.find(self.author_id)
      self.auth = author.last_name[0..3].titleize
    end
  end
end
