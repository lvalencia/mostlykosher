class EventParamsParser
  def initialize(params:)
    @params = params
  end

  def parse
    params[:date] = Chronic.parse(date) if date.present?
    params[:published_at] = (is_published? ? Time.now : nil)
    params
  end

  protected

  def is_published?
    published_at.to_s.eql? 'published'
  end

  private

  def published_at
    params[:published_at]
  end

  def date
    params[:date]
  end

  attr_reader :params
end