# Task One
# Chris Loewer

(1..100).each do |i|
  if i%3 == 0 && i%5 == 0
    puts 'ExploricaTours'
  elsif i%3 == 0
    puts 'Explorica '
  elsif i%5 == 0
    puts 'Tours'
  else
    puts i
  end
end
