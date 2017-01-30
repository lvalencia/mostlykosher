describe EventParamsParser do
  describe '#parse' do
    let(:params) do
      {
        title: 'Event Title',
        link: 'www.koshereventlink.com',
        description: '<strong>Some HTML Description</strong>',
        location: 'A Google Interpretable Location',
        date: '',
        published_at: ''
      }
    end

    subject { described_class }

    it 'parses event parameters without date or published at' do
      parsed_params = subject.new(params: params).parse
      expect(parsed_params[:date]).to eq('')
      expect(parsed_params[:published_at]).to be(nil)
    end

    it 'parses event parameters with date and published at' do
      parsed_params = subject.new(
        params: params.merge(date: '12/29/2016 4:00 PM', published_at: 'published')
      ).parse
      expect(parsed_params[:date]).to be_kind_of(Date)
      expect(parsed_params[:published_at]).to be_kind_of(Time)
    end
  end
end