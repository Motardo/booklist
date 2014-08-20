require 'rails_helper'

RSpec.describe "books/new", :type => :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :description => "MyText",
      :year_published => 1,
      :author => nil
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "textarea#book_description[name=?]", "book[description]"

      assert_select "input#book_year_published[name=?]", "book[year_published]"

      assert_select "input#book_author_id[name=?]", "book[author_id]"
    end
  end
end
