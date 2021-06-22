require 'rails_helper'

RSpec.describe "Interactions", type: :request do
  let!(:interaction) { create(:interaction) }

  describe "GET /index" do
    it "returns http success" do
      get interactions_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get interaction_path(interaction.id)
      expect(response).to have_http_status(:success)
    end
  end
end
