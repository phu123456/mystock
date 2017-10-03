json.extract! history, :id, :name, :current, :previous, :quantity, :update_date, :updater, :plate, :discription, :price, :created_at, :updated_at
json.url history_url(history, format: :json)
