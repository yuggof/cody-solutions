=begin
I removed find_all method from Array class!
Implement your own Array#find_all method so for example:

[1, 2, 3, 4].find_all { |e| e > 2 } # would return [3, 4].
=end

class Array
  def find_all
    a = []

    each do |e|
      a << e if yield(e)
    end
    
    a
  end
end
