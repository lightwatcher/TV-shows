class NetworksController < ApplicationController

  def index
    @networks = Network.all
  end

  def show
    @network = Network.find_by(id: params[:id])
  end

  def new
  end

  def create
    @network = Network.new
    @network.chanel = params[:chanel]

    if @network.save
      redirect_to "/networks/#{ @network.id }"
    else
      render 'new'
    end
  end

  def edit
    @network = Network.find_by(id: params[:id])
  end

  def update
    @network = Network.find_by(id: params[:id])
    @network.chanel = params[:chanel]

    if @network.save
      redirect_to "/networks/#{ @network.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @network = Network.find_by(id: params[:id])
    @network.destroy


    redirect_to "/networks"
  end
end
