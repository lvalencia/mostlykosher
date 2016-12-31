class FanController < ApplicationController
  def newsletter_signup
    fan = Fan.create(email: email)
    if fan.persisted?
      render json: { status: 'success' }
    else
      render json: fan.errors.messages.to_json, status: :unprocessable_entity
    end
  end

  private

  def email
    params.fetch(:email, nil)
  end
end
