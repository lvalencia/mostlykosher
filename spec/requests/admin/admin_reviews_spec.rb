require 'rails_helper'

RSpec.describe "Admin::Reviews", type: :request do
  describe "GET /admin_reviews" do
    it "works! (now write some real specs)" do
      get admin_reviews_path
      expect(response).to have_http_status(200)
    end
  end
end
