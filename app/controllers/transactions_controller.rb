class TransactionsController < ApplicationController
  require 'dotenv'
  require 'braintree'



  def index
    @client_token = Braintree::ClientToken.generate
  end


  def payment
    nonce_from_the_client = params[:payment_method_nonce]
    @result = Braintree::Transaction.sale(
      :amount => "10.00",
      :payment_method_nonce => nonce_from_the_client,
      :options => {
      :submit_for_settlement => true
  }
)
  end
end
