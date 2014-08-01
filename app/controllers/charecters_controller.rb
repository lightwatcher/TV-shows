class CharectersController < ApplicationController

  def index
    @charecters = Charecter.all
  end

  def show
    @charecter = Charecter.find_by(id: params[:id])
  end

  def new
    @actors = Actor.all
    @shows = Show.all
    @selected = params[:id]
  end

  def create
    @charecter = Charecter.new
    @charecter.actor_id = params[:actor_id]
    @charecter.show_id = params[:show_id]
    @charecter.plays = params[:plays]

    if @charecter.save
      redirect_to "/actors"
    else
      render 'new'
    end
  end

  def edit
    @charecter = Charecter.find_by(id: params[:id])
  end

  def update
    @charecter = Charecter.find_by(id: params[:id])
    @charecter.actor_id = params[:actor_id]
    @charecter.show_id = params[:show_id]
    @charecter.plays = params[:plays]

    if @charecter.save
      redirect_to "/charecters/#{ @charecter.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @charecter = Charecter.find_by(id: params[:id])
    @charecter.destroy


    redirect_to "/charecters"
  end
end
