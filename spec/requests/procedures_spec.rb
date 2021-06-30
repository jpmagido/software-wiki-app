require 'rails_helper'

RSpec.describe "Procedures", type: :request do
  let(:procedure) { create(:procedure)}

  describe "GET /index" do
    it "returns http success" do
      get interaction_procedures_path procedure.interaction
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get interaction_procedure_path procedure.interaction, procedure
      expect(response).to have_http_status(:success)
    end
  end
end
