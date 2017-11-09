def nyc_pigeon_organizer(data)
  array_of_keys = []
  data.each do |key, value|
    array_of_keys << value
  end
  return array_of_keys
end
