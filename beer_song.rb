require 'Linguistics'
Linguistics::use(:en)

class Integer

  def bottles
    case self
      when 0
         "no more bottles"
      when 1
         "one bottle"
      else
         "#{self.en.numwords} bottles"
    end
  end
end

99.downto(0) do |n|
  puts "#{n.bottles.capitalize} of beer on the wall, #{n.bottles} of
beer."
  if n > 0
    puts "Take one down and pass it around, #{(n-1).bottles} of beer on
the wall."
    puts
  else
    puts "Go to the store and buy some more, #{99.bottles} of beer on
the wall."
  end
end
