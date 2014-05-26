require 'spec_helper'

describe AdminController, :type => :controller do
  describe "GET #login" do
    it "renders correctly" do
      get :login
      expect(response.status).to eq 200
    end
  end

  describe "POST #login" do
    context "with correct data" do
      let(:admin_params) { { name: 'admin', password: 'dev123' } }

      it "logs in as admin" do
        post :login, { admin: admin_params }
        expect(response.status).to eq 302
        expect(session[:admin]).to be true
      end
    end

    context "with invalid data" do
      let(:admin_params) { { name: 'admin', password: 'wrong' } }

      it "logs in as admin" do
        post :login, { admin: admin_params }
        expect(response.status).to eq 404
        expect(session[:admin]).to be_nil
      end
    end
  end

  describe "GET #logout" do
    before { session[:admin] = true }

    it "logs out" do
      get :logout
      expect(response.status).to eq 302
      expect(session[:admin]).to be_nil
    end
  end
end
