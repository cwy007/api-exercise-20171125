json.data do
  json.array! @trains, :partial => 'item', :as => :train, :locals => { :from_index_json => true }  
end
