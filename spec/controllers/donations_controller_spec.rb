require 'rails_helper'

describe DonationsController, :type => :controller do
  def sign_in_and_stub(user)
    sign_in :user, user
    allow(controller).to receive(:current_user) { user }
  end

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
      sign_in_and_stub(@user)
      params = { donation: { description: "Its a book", state: "delivered" } }

      post :create, params
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

  describe "POST #update" do
    it "returns http success" do
      # donation = create(:donation, user: @user)
      # binding.pry
      # sign_in_and_stub(@user)
      # params = { id: donation.id,
      #            donation:
      #              {
      #                description: "Its a Toy",
      #                state: "Lost in Transit"
      #               }
      #           }
      #
      # post :update, params
      # expect(donation.description).to eq("Its a Toy")
    end
  end
  #
  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
