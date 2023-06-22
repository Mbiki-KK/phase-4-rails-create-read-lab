require 'rails_helper'

RSpec.describe "Plants", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/plant/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/plant/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/plant/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/plant/create"
      expect(response).to have_http_status(:success)
    end
  end

end
