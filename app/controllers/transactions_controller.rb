class TransactionsController < ApplicationController
  def new
    @rent_payment = current_user.rent_payments.where(state: 'due payment').find(params[:rent_payment_id])
  end
end
