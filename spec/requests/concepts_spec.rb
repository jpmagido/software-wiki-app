require 'rails_helper'

RSpec.describe "Concepts", type: :request do
  let(:version) { create(:version) }
  let(:concept) { create(:concept) }
  let(:version_concept) { create(:version_concept, concept: concept, version: version)}

  describe "GET /index" do
    it "returns http success" do
      get version_concepts_path version
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get new_version_concept_path version
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get version_concept_path version, concept
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_version_concept_path version, concept
      expect(response).to have_http_status(:success)
    end
  end
end

