class AdminController < ApplicationController
   before_filter :require_login, except: [:login]
   before_filter :load_current_account, except: [:login]

   def login
      if request.post?
         @account = AccountLogin.new(login_params).login
         if @account.nil?
            flash[:auth_failure] = "Failed to Login"
            redirect_to login_admin_index_path
         else
            session[:account] = @account.id
            redirect_to home_admin_index_path
         end
      else
         if not session[:account].nil?
            redirect_to home_admin_index_path
         end
      end
   end

   def logout
      AccountLogout.new(session: session).logout
     redirect_to root_path
   end

   def home
      @unpublished_events = Event.unpublished
      @published_events = Event.published
      @previous_shows = Event.previous_shows
      @upcoming_shows = Event.upcoming_shows
   end

  private

  def login_params
     {
       email: params[:user],
       password: params[:password]
     }
  end

end
