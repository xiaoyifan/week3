class ListsController < ApplicationController

  def index
    @lists = List.limit(1000)
  end

  def show
    @list = List.find(params[:id])
  end
  
end
