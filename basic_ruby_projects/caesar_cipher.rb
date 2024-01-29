# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string
# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

def caesar_cipher(phrase, displacement)
    phrase_array = phrase.split(' ')
    final_array = []
    for word in phrase_array
        intermediate_array = []
        word.split('').each do |letter| 
            num = letter.ord
            if letter.match(/[A-Z|a-z]/)
              if num.between?(65, 90)
                tot = num + displacement
                tot > 90 ? tot = (tot - 90) + 64 : tot
                intermediate_array << tot.chr
              else
                tot = num + displacement
                tot > 122 ? tot = (tot - 122) + 97 : tot
                intermediate_array << tot.chr
              end
            else
                intermediate_array << letter
            end
        end
        final_array << intermediate_array.join('')
    end
    final_array.join(' ')
end

caesar_cipher("What a string!", 5)