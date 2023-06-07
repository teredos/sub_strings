# frozen_string_literal: true

def substrings(phrase, array)
  new_array = []
  array.each do |word|
    new_array += phrase.downcase.scan(word)
  end
  new_array.tally
end

dic = %w[below down go going horn how howdy it i low own part partner sit]
p substrings('below', dic)
p substrings("Howdy partner, sit down! How's it going?", dic)
