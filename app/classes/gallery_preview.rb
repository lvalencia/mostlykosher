class GalleryPreview
  def initialize(**options)
    @options = options
  end

  def images
    @entries ||= PressEntry.where(published: true).limit(limit).order(ordering: ordering)
    return @entries.map(&:gallery_preview) if unpack
    @entries
  end

  private

  def limit
    options[:limit] || 5
  end

  def ordering
    options[:order] || :desc
  end

  def unpack
    options[:unpack]
  end

  attr_reader :options
end
