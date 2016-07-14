class ComicsController < ApplicationController
  # NHO: what lines are repetive in this controller?
  # One way to DRY up your controller is to use a before_action to run a method
  def index
    @comics = Comic.all
  end

  def show
    @comic = Comic.find(params[:id])
  end

  def new
    @publisher = Publisher.find(params[:publisher_id])
    @comic = Comic.new
  end

  def create
    @publisher = Publisher.find(params[:publisher_id])
    @comic = Comic.create!(comic_params.merge(publisher: @publisher)) # another way to do this is @publisher.comics.create!(comic_params) then you dont need to merge in @publisher
    redirect_to publisher_comic_path(@publisher, @comic)
  end

  def edit
    @comic = Comic.find(params[:id])
  end

  def update
    @comic = Comic.find(params[:id])
    @publisher = Publisher.find(params[:publisher_id])
    @comic.update(comic_params.merge(publisher: @publisher))
    redirect_to publisher_comic_path(@comic.publisher, @comic)
  end

  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    redirect_to @comic.publisher
  end

  private
  def comic_params
    params.require(:comic).permit(:title, :issue_no, :authors, :artists, :year, :cover_url, :publisher)
  end
end
