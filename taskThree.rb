# Task Three
# Chris Loewer

def reverse_string(str)

  # The default solution
  # str.reverse

  # Alternative solution
  chars = str.chars
  reversed_string = ''

  chars.length.times do
    reversed_string.concat chars.pop
  end

  # return reversed copy of string
  reversed_string
end

# Example given
puts reverse_string "Madam, I'm Adam"
