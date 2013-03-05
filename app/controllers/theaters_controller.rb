class TheatersController < ApplicationController
  def index
    @theaters = Theater.order(:name)
  end
  def purchase
    ticket = Ticket.find(params[:id])
    if ticket.user_id.nil?
      ticket.is_bought = true
      @auth.tickets << ticket
    end
    render :json => ticket
  end
end