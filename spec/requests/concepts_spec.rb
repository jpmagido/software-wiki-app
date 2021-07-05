require 'rails_helper'

RSpec.describe "Concepts", type: :request do
  let!(:version) { create(:version)}
  let!(:concept) { create(:concept)}
  let!(:software_concept) { create(:software_concept, concept: concept, software: software)}

  describe "GET /index" do
    it "returns http success" do
      get software_concepts_path software
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get software_concept_path software, concept
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_software_concept_path software, concept
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get new_software_concept_path software
      expect(response).to have_http_status(:success)
    end
  end

end
