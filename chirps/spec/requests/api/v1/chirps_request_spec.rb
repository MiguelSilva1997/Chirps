require 'rails_helper'

RSpec.describe "Api::V1::Chirps", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/chirps"
      expect(response).to have_http_status(:success)
    end

    it "sends list of chirps" do
      create_list(:chirp, 3)

      get '/api/v1/chirps'

      expect(response).to be_successful

      json = JSON.parse(response.body, symbolize_names: true)
      expect(json[:data].count).to eq(3)
    end
  end

end
