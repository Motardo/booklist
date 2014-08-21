require 'rails_helper'

RSpec.describe "Books", :type => :request do
  describe "GET /books" do
    it "displays book titles titleized" do
      Author.create(last_name: 'foo')
      Book.create!(title: 'super duper', author_id: '1')
      get books_path
      expect(response.body).to include('Super Duper')
    end
  end
end
