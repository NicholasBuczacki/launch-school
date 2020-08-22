hash = {hash1: 'value1', hash2: 'value2', hash3: 'value3'}

hash.each_key{|k| puts k}
hash.each_value{|v| puts v}
hash.each{|k,v| puts k.to_s + " " + v.to_s}