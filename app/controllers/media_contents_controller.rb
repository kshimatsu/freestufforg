class MediaContentsController < ApplicationController
  def create
    @media = Medium.new(file_name: params[:file])
    @media.item_id = params[:item_id]
    @item = Item.find(params[:item_id])
    if @media.save!
      ItemMailer.confirm_posting(@item).deliver
      respond_to do |format|
        format.json{ render :json => @media }
      end
    end
  end
end
