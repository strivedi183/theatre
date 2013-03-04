class TheatersController < ApplicationController
  def index
    @theaters = Theater.order(:name)
  end
  def purchase
    ticket = Ticket.find(params[:id])
    @auth.tickets << ticket
    render :json => ticket
  end
end