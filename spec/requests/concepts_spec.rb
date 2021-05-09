require 'rails_helper'

RSpec.describe "Concepts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/concepts/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/concepts/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/concepts/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/concepts/new"
      expect(response).to have_http_status(:success)
    end
  end

end
