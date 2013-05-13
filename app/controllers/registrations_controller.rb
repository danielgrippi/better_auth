class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @token = register.token
  end

  private

  def register
    User.create(email: params[:user][:email])
    registration_code = RegistrationCode.create(token: SecureRandom.hex(20))
  end
end
