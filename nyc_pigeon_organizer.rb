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

  pigeon_hash.each do |key, value|
    idx = 0
    while idx < data.keys.length
      value.merge!(data.keys[idx]=>[])
      idx +=1
    end
  end

# dig into the last level of data hash to itterate through array
# if each value of array exists in pigeon_hash keys
# then add they key of the array we itterated through to the our pigeon hash based on data[key]value


  data.each do |cat, attri|
    data[attri].each do |color, array_of_pigeons|
      i = 0
      while i < array_of_pigeons.length
        if pigeon_hash.keys.include?(array_of_pigeons[i])
          pigeson_hash[array_of_pigeons[i]][cat] << color
          i += 1
        end
      end
    end
  end

  return pigeon_hash
end
