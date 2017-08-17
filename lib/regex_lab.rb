def starts_with_a_vowel?(word)
  word.downcase.match(/^[aeiou]/) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un+\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z]+.+[.]$/) ? true : false
end

def valid_phone_number?(phone)
  phone.each do |number|
    if !number.match(/\d{4}/)
      return false
    end
  end
  true
end
#
# correct_punctuation = "I stepped on a Corn Flake. now I'm a cereal killer."
#
# puts first_word_capitalized_and_ends_with_punctuation?(correct_punctuation)

valid_numbers = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]

puts valid_phone_number?(valid_numbers)
