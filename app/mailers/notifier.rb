class Notifier < ActionMailer::Base
  default from: "Tomas Hreben <threben@gmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received(order)
    @order = order

    mail to: order.email,
         subject: 'Potvrdenie objednavky z Pragmaticke knihovny'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped(order)
    @order = order

    mail to: order.email,
         subject: 'Objednavka z Pragmaticke knihovny bolo odoslana'
  end
end
