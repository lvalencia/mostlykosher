class AdminController < ApplicationController
  layout 'admin'

  before_filter :require_login, except: [:login, :signin]
  before_filter :load_current_account, except: [:login, :signin]

  def signin
    redirect_to home_path if logged_in?
  end

  def login
    if request.post?
      @account = AccountLogin.new(login_params).authenticate
      if @account.nil?
        flash[:auth_failure] = I18n.t(:failed, scope: :authentication)
        redirect_to signin_path
      else
        session[:account] = @account.id
        redirect_to home_path
      end
    else
      redirect_to home_path if logged_in?
    end
  end

  def logout
    AccountLogout.new(session: session).logout
    redirect_to root_path
  end

  protected

  def require_login
    return redirect_to signin_path unless logged_in?
  end

  def load_current_account
    @account = Account.find(session[:account]) unless logged_in?
  end

  def logged_in?
    session[:account].present?
  end

  private

  def login_params
    {
      email: params[:user],
      password: params[:password]
    }
  end

  def home_path
    admin_events_path
  end
end
