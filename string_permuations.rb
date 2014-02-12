require 'debugger'
def permuations(unchosen, chosen = [])
  if unchosen.empty?
    return [chosen]
  else
    solutions = unchosen.collect do |letter|
      permuations(unchosen - [letter], chosen + [letter])
    end
  end
  return solutions.flatten(1)
end

puts permuations(["a", 'b', 'c']).inspect