class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    # binding.pry
    @item = Item.find(message_params[:item_id])
    if @message.save!
      ItemMailer.contact_lister(@item, @message).deliver_now
      respond_to do |format|
        format.json { render :json => @message, status: :created, location: @item}
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:email, :tel, :message_description, :sms_notify, :weekly_newsletter, :item_id)
    end

end
