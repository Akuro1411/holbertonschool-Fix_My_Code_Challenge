result = []
ARGV.each do |arg|
  # Skip if not integer
  next if arg !~ /^-?[0-9]+$/

  # Convert to integer
  i_arg = arg.to_i

  # Insert result at the right position
  is_inserted = false
  i = 0
  l = result.size
  while i < l do
    if result[i] >= i_arg
      result.insert(i, i_arg)
      is_inserted = true
      break
    end
    i += 1
  end

  # If not inserted, append to the end
  result << i_arg if !is_inserted
end

puts result

