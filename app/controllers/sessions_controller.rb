class SessionsController < ApplicationController
  params = ActionController::Parameters.new(controller: "sessions", action: "new")
  def new
  end

  def create
    ##session_params = params.require(:session).permit(:email, :password)
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session      # ログインの直前に必ずこれを書くこと
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' # 本当は正しくない
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    log_out
    redirect_to root_url, status: :see_other
  end

 
end
