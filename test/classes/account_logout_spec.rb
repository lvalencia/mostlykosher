describe AccountLogout do
  describe '#logout' do
    let (:session) do
      {
        account: 'An Account Id'
      }
    end

    subject { described_class.new(session: session) }

    it 'logs you out' do
      subject.logout
      expect(session[:account]).to be(nil)
    end
  end
end