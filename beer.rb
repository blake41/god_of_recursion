def beer_on_the_wall(n)
  if n == 0
    puts "no more bottle of beers on the wall"
    return
  end
  puts "#{n} bottles of beer on the wall"
  beer_on_the_wall(n-1)
end

beer_on_the_wall(99)