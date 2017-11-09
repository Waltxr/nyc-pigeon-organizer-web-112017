def nyc_pigeon_organizer(data)
  array_of_keys = []
  data.each do |key, value|
    data[key].each do |attribute, names|
    array_of_keys << names
    end
  end

  names = array_of_keys.flatten.uniq

  pigeon_hash = {}

idx = 0
while idx < data.keys.lengh
  names.each do |name|
    pigeon_hash[name] = {data.keys[idx]}
  end

end
