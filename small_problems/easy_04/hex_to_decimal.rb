require "pry"
def hex_to_decimal(hex)
  # Define a hash that maps hexadecimal digits to their corresponding decimal values
  hex_to_dec = {
    "0" => 0,
    "1" => 1,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "A" => 10,
    "B" => 11,
    "C" => 12,
    "D" => 13,
    "E" => 14,
    "F" => 15
  }

  # Initialize a variable to store the decimal value
  decimal = 0
  
  # Split the hex string into an array of characters
  hex_chars = hex.split('')
  
  # Iterate over the array of characters, starting from the rightmost character
  hex_chars.reverse.each_with_index do |char, index|
    # Look up the decimal value for the character in the hash
    char_value = hex_to_dec[char]
    
    # Multiply the value by 16 to the power of the index, and add it to the decimal value
    decimal += char_value * 16**index
  end

  # Return the decimal value
  decimal
end

hex_number = "4D9F"
decimal_number = hex_to_decimal(hex_number)
# decimal_number is now 19871
