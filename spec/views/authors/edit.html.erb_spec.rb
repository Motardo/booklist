require 'rails_helper'

RSpec.describe "authors/edit", :type => :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :firstName => "MyString",
      :lastName => "MyString"
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input#author_firstName[name=?]", "author[firstName]"

      assert_select "input#author_lastName[name=?]", "author[lastName]"
    end
  end
end
