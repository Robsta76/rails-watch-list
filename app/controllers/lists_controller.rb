class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]
  def index
    @lists = List.all
  end

  def new
    @lists = List.new
  end

  def show
    @bookmarks = bookmarks.new
  end

  def create
    @lists = List.create(list_params)
      if @list.save
        redirect_to list_path(@list)
        else
          render :new
      end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end


  private
  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end