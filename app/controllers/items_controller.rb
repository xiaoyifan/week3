class ItemsController < ApplicationController

  def create
    list = List.find(params[:list_id])
    @item = list.items.create(content: params[:content])

    respond_to do |format|
      format.js
      format.html do
        redirect_to list_url(list.id)
      end
      format.json do
        render json: @item
      end
    end

  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to list_url(item.list.id)
  end
end
