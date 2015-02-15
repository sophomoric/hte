class DonationsController < ApplicationController
  def new
    # @donation = Donation.new
  end

  def create
    @donation = current_user.donations.new(donation_params)
    if @donation.save
      redirect_to @donation
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end

  private

  def donation_params
    params.require(:donation).permit(:state, :description)
  end
end
