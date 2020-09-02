require 'date'

class RentPaymentsController < ApplicationController

  def create
    unit = Unit.find(params[:unit_id])
    due_date = (Date.today - Date.today.mday + 1)
    if due_date < Date.today
      state = 'due payment'
    else
      state = 'pending'
    end

    order  = RentPayment.create!(unit_id: unit.id, due_date: due_date, amount: unit.rent_amount, state: state, user: current_user)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: order.due_date.strftime("Payment for %B %Y"),
        # images: [teddy.photo_url],
        amount: order.amount_cents,
        currency: 'cad',
        quantity: 1
      }],
      success_url: rent_payment_url(order),
      cancel_url: rent_payment_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_rent_payment_transaction_path(order)
  end

  def show
    @rent_payment = current_user.rent_payments.find(params[:id])
  end

end
