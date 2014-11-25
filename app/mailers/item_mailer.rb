class ItemMailer < ActionMailer::Base
  default from: "info@freestuff.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.item_mailer.contact_seller.subject
  #
  def contact_lister(item, message)
    @greeting = "Greetings!"
    @item = item
    @message = message.message_description
    mail(to: @item.lister_email, subject: "[Freestuff.org] Someone would like to claim your free item \"#{ @item.title }\"", from: message.email)
  end
end
