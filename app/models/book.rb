class Book < ActiveRecord::Base
  belongs_to :author
  after_initialize :defaults

  def defaults
    self.readDate ||= Time.now
  end
end
