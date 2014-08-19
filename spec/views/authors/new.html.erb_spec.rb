require 'rails_helper'

RSpec.describe "authors/new", :type => :view do
  before(:each) do
    assign(:author, Author.new(
      :firstName => "MyString",
      :lastName => "MyString"
    ))
  end

  it "renders new author form" do
    render

    assert_select "form[action=?][method=?]", authors_path, "post" do

      assert_select "input#author_firstName[name=?]", "author[firstName]"

      assert_select "input#author_lastName[name=?]", "author[lastName]"
    end
  end
end
