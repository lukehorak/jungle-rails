class ReceiptMailer < ApplicationMailer
  default :from => "no-reply@jungle.com"

  def send_receipt(order)
    @order = order
    mail( :to => @order.email,
    :subject => "Order #{@order.id} from Jungle")
  end
end
