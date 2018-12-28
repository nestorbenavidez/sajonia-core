class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  layout 'login'

  def new
    @user = User.new
  end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to("/dashboard/index", notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(login_path, notice: 'Logged out!')
  end
end
