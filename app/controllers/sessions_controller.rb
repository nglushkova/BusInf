# encoding: utf-8
class SessionsController < ApplicationController
  def new
    @title = "Вход в личный кабинет"
  end

  def create
    user = User.authenticate(params[:session][:email], params[:session][:password])

    if user.nil?
      flash.now[:error] = "Пожалуйста, проверьте правильность написания логина и пароля."
      @title = "Вход"
      render 'new'
    else
      sign_in user
      redirect_to user
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
