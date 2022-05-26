class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    raise
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
