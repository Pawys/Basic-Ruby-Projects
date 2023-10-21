def caesar_cipher(string, num)
  encrypted_string = []
  string.split("").each do |letter|
    upcase = 1 if letter.upcase == letter
    letter = letter.upcase
    char_code = letter.ord
    if char_code > 64 && char_code < 91
      while (char_code + num) > 90
        char_code = char_code - 26
      end
      while (char_code + num) < 65
       char_code = 90 + (char_code - 64)
      end
      char_code = char_code + num
      encrypted_string.push(char_code.chr) if upcase == 1
      encrypted_string.push((char_code.chr).downcase) unless upcase == 1
    else 
      encrypted_string.push(letter);
    end
  end
  puts encrypted_string.join('')
end

p caesar_cipher("Hello World!", 5)
