require 'rails_helper'

RSpec.describe "Authors", :type => :request do
  describe "GET /authors" do
    it "displays authors list" do
      Author.create!(last_name: 'carell', first_name: 'steve')
      get authors_path
      expect(response.body).to include('Carell, Steve')
    end
  end
end
