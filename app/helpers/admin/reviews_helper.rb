module Admin::ReviewsHelper
  def entity(review)
    review.entity
  end

  def quote(review)
    truncate(review.quote, length: 32)
  end

  def link(review)
    return raw "<a href='#{review.link}' target='_blank'>Click Preview</a>" if review.link.present?
    I18n.t(:missing_link, scope: [:admin, :reviews])
  end

  def ordering(review)
    return review.ordering if review.ordering.present?
    I18n.t(:missing_ordering, scope: [:admin, :reviews])
  end
end
