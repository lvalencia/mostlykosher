module Admin::EventsHelper
  def title(event)
    return event.title if event.title.present?
    I18n.t(:missing_title, scope: [:admin, :event])
  end

  def link(event)
    return event.link if event.link.present?
    I18n.t(:missing_link, scope: [:admin, :event])
  end

  def description(event)
    return event.description if event.description.present?
    I18n.t(:missing_description, scope: [:admin, :event])
  end

  def location(event)
    return event.location if event.location.present?
    I18n.t(:missing_location, scope: [:admin, :event])
  end

  def date(event)
    return event.date.iso8601 if event.date
    'No DateTime Set Yet'
  end
end
