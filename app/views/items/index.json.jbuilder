json.array!(@items) do |item|
  json.extract! item, :id, :title, :description, :location, :expiry_date, :lister_email, :lister_tel, :sms_notify
  json.url item_url(item, format: :json)
end
