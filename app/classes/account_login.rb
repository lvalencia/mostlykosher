class AccountLogin
  def initialize(email:, password:, **options)
    @email = email
    @password = password
    @options = options
  end

  def authenticate
    return account if valid?
  end

  protected

  def valid?
    return false if account.nil?
    account.encrypted_password == BCrypt::Engine.hash_secret(password, account.salt)
  end

  private

  def account
    @account ||= Account.find_by(email: email)
  end

  attr_reader :email, :password, :options
end