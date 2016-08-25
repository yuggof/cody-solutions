=begin
Write such a code that allows to use ~:foo syntax in 'case' statement like this:

o = ...
case o
  when ~:new  then puts "o responds to :new method"
  when ~:size then puts "o responds to :size method"
end

# for o = [] expected output is  "o responds to :size method"
# # for o = String expected output is  "o responds to :new method"

Your code should work with any king of object.
=end

class Symbol
  class Checker
    def initialize(symbol)
      @symbol = symbol
    end

    def ===(object)
      object.respond_to?(@symbol)
    end
  end

  def ~
    Checker.new(self)
  end
end
