def captcha(seq)
  total = 0
  length = seq.length
  half = length / 2

  seq.chars.each_with_index do |char, index|
    next_digit = seq[(index + half ) % length]
    total += char.to_i if char == next_digit
  end

  total
end
