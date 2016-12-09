class AccountLogin
  def initialize(email:, password:, **options)
    @email = email
    @password = password
    @options = options
  end

  def login
    return account if authenticate
  end

  protected

  def authenticate
    account.encrypted_password == BCrypt::Engine.hash_secret(password, account.salt)
  end

  private

  def account
    @account ||= Account.find_by(email: email)
  end

  attr_reader :email, :password, :options
end