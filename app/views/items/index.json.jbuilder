json.array!(@items) do |item|
  json.extract! item, :id, :title, :description, :location, :expiry_date, :remaining_days, :lister_email, :lister_tel, :sms_notify, :media
  json.url item_url(item, format: :json)
end
