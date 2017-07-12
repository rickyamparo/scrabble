require 'pry'

class Scrabble

  def score(word)
    total_score = 0
    if word != nil
      word = word.upcase
      word = word.split(//)
      local_hash = point_values
      word.each do |key|
        total_score += local_hash[key]
      end
    end
    total_score
  end

  def score_with_multipliers (word, multiplier)
    word = word.upcase.split(//)
    local_hash = point_values
    binding.pry
    word_points = word.map do |key|
      key = local_hash[key]
    end
    index = 0
    while index < word.length
      word_points[index] = word_points[index] * multiplier[index]
    end
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
