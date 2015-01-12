class Api::V1::SessionsController < ApplicationController
  def create
    chek_params
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      create_token(user)
      render json: user
    else
      render json: { message: 'incorrect username or password'},
             status: :bad_request
    end
  end

  def destroy
    destroy_token
    head :no_content
    # render json: { message: 'successfully logged out'}
  end

  private

    def chek_params
      params.require(:email)
      params.require(:password)
    end

end