require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  describe "GET /recipes" do
    it "visits recipe index page" do
      VCR.use_cassette('get_recipes') do
        get recipes_path
      end
      expect(response).to have_http_status(200)
    end
  end
end
