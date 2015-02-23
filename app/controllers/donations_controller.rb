class DonationsController < ApplicationController
  def new
    @donation = Donation.new
  end

  def create
    @donation = current_user.donations.new(donation_params)

    if @donation.save
      redirect_to user_donation_url(current_user, @donation)
    else
      render :new
    end
  end

  def show
    @donation = Donation.find(params[:id])
  end

  def edit
    @donation = Donation.find(params[:id])
  end

  def update
    @donation = current_user.donations.find(params[:id])
    # binding.pry
    if @donation.update(donation_params)
      redirect_to user_donation_url(current_user, @donation)
    else
      render :edit
    end
  end

  def index
    user = User.find_by_id(params[:user_id])
    if user
      @donations = user.donations
    else
      render_404
    end
  end

  def destroy
  end

  private

  def donation_params
    params.require(:donation).permit(:state, :description)
  end
end
