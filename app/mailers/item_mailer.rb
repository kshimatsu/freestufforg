class ItemMailer < ActionMailer::Base
  default from: "info@freestuff.org",
          host: "https://freestuff-jka.herokuapp.com/"


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.item_mailer.contact_seller.subject
  #
  def contact_lister(item, message)
    @greeting = "Greetings!"
    @item = item
    @message = message
    mail(to: @item.lister_email, subject: "[Freestuff.org] Someone would like to claim your free item \"#{ @item.title }\"", from: message.email)
  end

  def confirm_posting(item)
    @greeting = "Thanks for posting free stuff!"
    @item = item
    mail(to: @item.lister_email, subject: "[Freestuff.org] Confirmation for posting your free item \"#{ @item.title }\"", from: "testing@freestuff")
  end
end