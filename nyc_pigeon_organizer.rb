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
      pigeon_hash[name] = {}
  end

  idx = 0
  while idx < data.keys.length
  newest_hash = pigeon_hash.each do |key, value|
      value.merge!(data.keys[idx]=>[])
      idx +=1
    end
  end

  return pigeon_hash
end
