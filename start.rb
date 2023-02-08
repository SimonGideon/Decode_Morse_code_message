$morse_codes = {
  " " => " ",
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z",
}

def decode(code)
  $morse_codes.fetch(code)
end

def decode_word(word)
  word.split(" ").map { |code| decode(code) }.join("")
end

def decode_message(message)
  message.split("   ").map { |word| decode_word(word) }.join(" ")
end

puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
