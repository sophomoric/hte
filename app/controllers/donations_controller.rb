class DonationsController < ApplicationController
  def new
  end

  def create
    @donation = current_user.donations.new(donation_params)
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
