require 'spec_helper'

describe MainController, :type => :controller do
  describe "GET #index" do
    it "renders correctly" do
      get :index
      expect(response.status).to eq 200
    end
  end
end
