require 'rails_helper'

RSpec.describe "Values", type: :request do
  let!(:property) { create(:property) }
  let!(:value) { create(:value, property: property) }
  
  describe "GET /show" do
    it "returns http success" do
      get property_value_path property, value
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "return http success" do
      get new_property_value_path property
      expect(response).to have_http_status(:success)
    end
  end
end
