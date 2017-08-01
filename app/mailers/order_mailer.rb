class OrderMailer < ApplicationMailer
	default from: "moira.horizon@gmail.com"

	def order_email(order)
		@order = order
		mail(to: @order.email, subject: "注文を確定しました")
	end
end
