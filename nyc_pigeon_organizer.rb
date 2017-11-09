def nyc_pigeon_organizer(data)
  array_of_keys = []
  data.each do |key, value|
    key.each do |attribute, names| 
    array_of_keys << value
    end
  end
  return array_of_keys
end
