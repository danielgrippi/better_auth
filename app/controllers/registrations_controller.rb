class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    registration = Registration.create(token: SecureRandom.hex(20), email: params[:registration][:email])
    @token = registration.token
  end
end
