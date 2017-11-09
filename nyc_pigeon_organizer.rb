def nyc_pigeon_organizer(data)
  array_of_keys = []
  data.each do |key, value|
    data[key].each do |attribute, names|
    array_of_keys << names
    end
  end

  names = array_of_keys.flatten.uniq

  pigeon_hash = {}

  names.each do |name|
    idx = 0
    while idx < data.keys.length
      pigeon_hash[name].
      idx += 1
    end
  end
# merge({data.keys[idx]=>[]})
  return pigeon_hash
end
