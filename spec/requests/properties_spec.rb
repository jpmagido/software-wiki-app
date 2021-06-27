require 'rails_helper'

RSpec.describe "Properties", type: :request do
  let!(:software) { create(:software)}
  let!(:concept) { create(:concept)}
  let!(:property) { create_list(:property, 2, concept: concept)}

  let!(:software_concept) { create(:software_concept, concept: concept, software: software)}


  describe "GET /show" do
    it "returns http success" do
      get software_concept_property_path software, concept, property
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_software_concept_property_path software, concept, property
      expect(response).to have_http_status(:success)
    end
  end
end
