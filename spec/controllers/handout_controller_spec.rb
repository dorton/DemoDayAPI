require 'rails_helper'

RSpec.describe HandoutController, type: :controller do

  describe "GET #redirect" do
    it "returns http success" do
      get :redirect
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
