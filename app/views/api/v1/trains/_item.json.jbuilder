json.number train.number
json.available_seats train.available_seats
json.created_at train.created_at

from_index_json ||= nil 
if from_index_json
  json.train_url api_v1_train_url(train.number)
end
