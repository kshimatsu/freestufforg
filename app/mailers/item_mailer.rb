class ItemMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.item_mailer.contact_seller.subject
  #
  def contact_seller
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
