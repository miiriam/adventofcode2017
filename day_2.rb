def checksum
  checksum = 0

  spreadsheet = <<-HOLA
  5 1 9 5
  7 5 3
  2 4 6 8
  HOLA

  sp = spreadsheet.lines.map do |line|
    line.split.map(&:to_i)
  end

  sp.each do |row|


    row.combination(2).each do |a, b|
      if a % b == 0
        checksum += a/b

      elsif b % a == 0
        checksum += b / a
      end
    end
  end
  checksum
end
