def nyc_pigeon_organizer(data)
  array_of_keys = []
  data.each do |key, value|
    data[key].each do |attribute, names|
    array_of_keys << names
    end
  end
  return array_of_keys
end
