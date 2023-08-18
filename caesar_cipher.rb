def caesar_cipher(string, shift_by)
    chars = string.downcase.bytes
    new_string = []
    chars.each_with_index {|char, index| 
    if char + shift_by < 122
        new_string[index] = (char+shift_by).chr
    else
        new_string[index] = (char+shift_by-26).chr
    end}
    puts new_string.join('')
end

caesar_cipher("I love Ruby", 5)
