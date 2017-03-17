json.extract! admin_press_entry, :id, :created_at, :updated_at
json.url admin_press_entry_url(admin_press_entry, format: :json)
json.html render partial: 'admin/press_entries/table_row', locals: {admin_press_entry: admin_press_entry }, formats: [:html]
