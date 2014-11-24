class MessagesController < ApplicationController
  def create
    binding.pry
    @message = Message.new(params)
    @message.item_id = params[:item_id]
    if @message.save!
      respond_to do |format|
        format.json { render :json => @message}
      end
    end
  end
end
