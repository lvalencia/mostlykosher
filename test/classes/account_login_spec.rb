describe AccountLogin do
  describe '#login'do
    let (:salt) { BCrypt::Engine.generate_salt }
    let (:password) { 'admin_password' }
    let (:email) { 'admin@email.com' }
    let (:encrypted_password) { BCrypt::Engine.hash_secret(password, salt) }
    let (:account) { double(:account, encrypted_password: encrypted_password, salt: salt) }
    let (:params) do
      {
        email: email,
        password: password
      }
    end

    subject { described_class.new(params) }

    before do
      allow(subject).to receive(:account).and_return(account)
    end

    it 'logs you in' do
      expect(subject.authenticate).to be(account)
    end

    it 'does not log you in' do
      allow(subject).to receive(:valid?).and_return(false)
      expect(subject.authenticate).to be(nil)
    end
  end
end