module Imageable
  extend ActiveSupport::Concern
  included do
    # paperclip
    has_attached_file :image,
                      styles: {
                        gallery_preview: '320x214#',
                        gallery_mosaic: '320x214#'
                      },
                      default_url: '/assets/:style/missing.png',
                      # note in order for cropping to be applied the style size needs to be smaller than the original
                      processor: [:papercrop]

    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    crop_attached_file :image, aspect: '16:9'
  end

  class_methods do
    def imageable?
      true
    end
  end

  def gallery_preview
    image.url(:gallery_preview)
  end

  def gallery_mosaic
    image.url(:gallery_mosaic)
  end

end
