class TicketsController < ApplicationController
  
  def index
    @tickets_new = Ticket.new
    @ticket = Ticket.all
  end

  def new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to tickets_path
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

  def destroy
    find_ticket
    if @ticket.destroy
      redirect_to tickets_path
    else
      render :index
    end
  end

private
  def ticket_params
    params.require(:ticket).permit([:title, :description])
  end

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end

end
