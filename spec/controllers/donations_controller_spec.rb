require 'rails_helper'

describe DonationsController, :type => :controller do
  before do
    @user = create(:user)
  end

  describe "GET #new" do
    it "returns http success" do
      get :new, { user_id: @user.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      params = { description: "Its a book", state: "delivered" }.
      merge({ user_id: @user.id })

      post :create, params
      expect(response).to have_http_status(:success)
      expect(Donation.count).to eq(1)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      donation = create(:donation)
      get :show, { user_id: @user.id, id: donation.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      donation = create(:donation)
      get :edit, { user_id: @user.id, id: donation.id }
      expect(response).to have_http_status(:success)
    end
  end
  #
  # describe "POST #update" do
  #   it "returns http success" do
  #     post :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
