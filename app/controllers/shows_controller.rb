class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def show
    @show = Show.find_by(id: params[:id])
  end

  def new
  end

  def create
    @show = Show.new
    @show.title = params[:title]
    @show.descrip = params[:descrip]
    @show.episode_num = params[:episode_num]

    if @show.save
      redirect_to "/shows/#{ @show.id }"
    else
      render 'new'
    end
  end

  def edit
    @show = Show.find_by(id: params[:id])
  end

  def update
    @show = Show.find_by(id: params[:id])
    @show.title = params[:title]
    @show.descrip = params[:descrip]
    @show.episode_num = params[:episode_num]

    if @show.save
      redirect_to "/shows/#{ @show.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @show = Show.find_by(id: params[:id])
    @show.destroy


    redirect_to "/shows"
  end
end
