ALPHABET = ('A'..'Z').to_a

def encrypt(text)
  text.upcase.chars.map do |character|
    index = ALPHABET.index(character)
    index ? ALPHABET[index - 3] : character
  end.join
end

# before refactor
# def encrypt(text)
#   alphabet = ('A'..'Z').to_a
#   encryption = text.upcase.chars.map do |character|
#     index = alphabet.index(character)
#     if index.nil?
#       character
#     else
#       alphabet[index - 3]
#     end
#   end
#   encryption.join
# end

#Generate alphabet using a range
#Upcase the text
#Take the text and split it into characters
#Iterate the characters using map method
#Find the index of the character inside the alphabet
#If character is not in the alphabet, keep the same
#Subtract 3 from the index
#We need the new letter with the new index
#Join the letters together
