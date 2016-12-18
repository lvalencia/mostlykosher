module Admin::EventsHelper
  def title(event)
    event.title || i18n.t(:missing_title, scope: :event)
  end

  def link(event)
    event.link || i18n.t(:missing_link, scope: :event)
  end

  def description(event)
    event.description || i18n.t(:missing_description, scope: :event)
  end

  def location(event)
    event.location || i18n.t(:missing_location, scope: :event)
  end

  def date(event)
    return event.date.strftime('%B %d, %Y') if event.date
    'No DateTime Set Yet'
  end
end
