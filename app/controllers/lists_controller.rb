class ListsController < ApplicationController

  def index
    @lists = List.order("lists").paginate(page: params[:page], per_page: 5)
  end

  def new
    @lists = List.new
  end

  def create
    List.create(list_params)
    redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:item)
  end

end
