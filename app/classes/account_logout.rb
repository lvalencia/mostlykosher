class AccountLogout
  def initialize(session:)
    @session = session
  end

  def logout
    session[:account] = nil
  end

  attr_reader :session
end
