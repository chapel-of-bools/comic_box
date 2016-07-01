class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
  end

  def show
    @publisher = Publisher.find(params[:id])
  end

  def new
    @publisher = Publisher.create
  end

  def create
    @publisher = Publisher.create!(publisher_params)
    redirect_to (publisher_path(@publisher))
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end

  def update
    @publisher = Publisher.find(params[:id])
    @publisher.update(publisher_params)
    redirect_to publisher_path(@publisher)
  end

  def destroy
    @publisher = Publisher.find(parmas[:id])
    @publisher.destroy
    redirect_to publishers_path 
  end

  private
  def publisher_params
    params.require(:publisher).permit(:name, :nationality)
  end
end
