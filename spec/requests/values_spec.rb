require 'rails_helper'

RSpec.describe "Values", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/values/show"
      expect(response).to have_http_status(:success)
    end
  end

end
