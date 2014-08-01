class OnsController < ApplicationController

  def index
    @ons = On.all
  end

  def show
    @on = On.find_by(id: params[:id])
  end

  def new
    @shows = Show.all
    @networks = Network.all
    @selected = params[:id]
  end

  def create
    @on = On.new
    @on.show_id = params[:show_id]
    @on.network_id = params[:network_id]
    @on.appears_at = params[:appears_at]

    if @on.save
      redirect_to "/ons/#{ @on.id }"
    else
      render 'new'
    end
  end

  def edit
    @on = On.find_by(id: params[:id])
  end

  def update
    @on = On.find_by(id: params[:id])
    @on.show_id = params[:show_id]
    @on.network_id = params[:network_id]
    @on.appears_at = params[:appears_at]

    if @on.save
      redirect_to "/ons/#{ @on.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @on = On.find_by(id: params[:id])
    @on.destroy


    redirect_to "/ons"
  end
end
