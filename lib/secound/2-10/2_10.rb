puts 1 && 2 && 3 # 3
puts 1 && nil && 3 # nil
puts 1 && false && 3 # false
puts nil || false # false
puts false || nil # nil
puts nil || false || 2 || 3 # 2 2が出てきた時点で真なので戻り値は2になる