class SheltersController < ApplicationController

  def index
    json_response(Shelter.all)
  end

  def create
    @shelter = Shelter.create!(dog_params)
    json_response(@shelter, :created)
  end

  def show
    @shelter = Shelter.find(params[:id])
    json_response(@shelter)
  end

  def update
    @shelter = Shelter.find(params[:id])
    @shelter.update!(shelter_params)
    json_response(@shelter, :created)
  end

  def destroy
    Shelter.find(params[:id]).destroy!
  end

  private

  def shelter_params
    params.permit(:location)
  end

end