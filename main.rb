letters = {"a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5,
 "g" => 6, "h" => 7, "i" => 8, "j" => 9, "k" => 10, "l" => 11, "m" => 12, "n" => 13,
  "o" => 14, "p" => 15, "q" => 16, "r" => 17, "s" => 18, "t" =>19, "u" => 20,
  "v" => 21, "w" => 22, "x" => 23, "y" => 24, "z" => 25
}

def caesar_cipher(string, shift_factor, letters)
  result = ""

  string.each_char do |char|
    if letters[char].nil?
      result += char #just add the space or special character
    else
      original_value = letters[char] #get the value at the key of the letter

      new_value = (original_value + shift_factor) % letters.size #change the value
      #based on the shift factor, wrapping if the result is > 27 using modulo 
      #(no remainder if the result is >= 26, so no change)
      
      new_letter = letters.key(new_value)

      if char == char.upcase
        result += new_letter.upcase
      else
        result += new_letter
      end
    end
  end

  result #return the final result
end

 puts caesar_cipher("Omg, finally :')", 5, letters) #calls the method, passing in 5 as a parameter for the shift factor