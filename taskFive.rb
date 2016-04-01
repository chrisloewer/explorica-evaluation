# Task Five
# Chris Loewer

# Read file line by line tracking N shortest and longest strings

file_name = 'input.txt'

File.open(file_name, 'r') do |file|

  # Number needed to find min and max
  n = file.first.strip.to_i

  # Track the longest and shortest strings
  longest = []
  shortest = []

  # Initialize with first N strings
  n.times do
    len = file.gets.strip.length
    longest.push len
    shortest.push len
  end

  # Ascending order
  shortest.sort!

  # Descending order
  longest.sort! { |x,y| y <=> x }

  file.each do |line|
    len = line.strip.length

    # check if shorter than longest min
    if len < shortest[-1]
      shortest[-1] = len
      shortest.sort!
    end

    # check if longer than shortest max
    if len > longest[-1]
      longest[-1] = len
      longest.sort! { |x,y| y <=> x }
    end
  end

  # Add arrays and print output
  min = 0
  shortest.each { |i| min += i }
  max = 0
  longest.each { |i| max += i }

  puts "Min Length: #{min}"
  puts "Max Length: #{max}"

end
