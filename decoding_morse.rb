# Morse code dictionary
def morse_code_dict
  {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z',
    '.----' => '1', '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5', '-....' => '6',
    '--...' => '7', '---..' => '8', '----.' => '9',
    '-----' => '0',
    '.-.-.' => '.', '--..--' => ',', '..--..' => '?',
    '-.-.--' => '!', '-..-.' => '/', '-...-' => '=',
    '---...' => ':', '.-.-.-' => '.'
  }
end

# Create a method to decode a Morse code character
def decode_char(morse_code)
  morse_code_dict[morse_code.strip] || 'UNKNOWN'
end

# Create a method to decode an entire word in Morse code
def decode_word(morse_code)
  morse_code.split.map { |morse_code_char| decode_char(morse_code_char) }.join
end

# Create a method to decode the entire message in Morse code
def decode_message(morse_message)
  words = morse_message.split('   ')
  decoded_words = words.map do |word|
    characters = word.split
    decoded_characters = characters.map { |char| decode_char(char) }
    decoded_characters.join
  end
  decoded_words.join(' ')
end
