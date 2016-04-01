# Task Four
# Chris Loewer

# Note:
# C# functionality vs Ruby functionality
# Console.Write() = print()
# Console.WriteLine() = puts()


# Segment 1

puts 'Segment One'

arr = *(5.downto(0))

arr.each_with_index do |j, ind|
  j.times do
    # Console.Write(" ");
    print ' '
  end
  (1 + 2*ind).times do
    # Console.Write("*");
    print '*'
  end
  # Console.WriteLine();
  puts ''
end


# Segment Two

puts "\nSegment Two"

arr = *(5.downto(0))
arr.push *(1..5)

arr.each_with_index do |j, ind|
  j.times do
    # Console.Write(" ");
    print ' '
  end
  (arr.length - 2*j).times do
    # Console.Write("*");
    print '*'
  end
  # Console.WriteLine();
  puts ''
end
