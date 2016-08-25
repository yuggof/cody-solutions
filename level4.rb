=begin
I removed % operator for integer numbers!
Re-implement it in a way following code will work properly:

10 % 3 #=> 1
23 % 0 # raises ZeroDivisionError error

Don't worry about negative numbers. I don't care about them.
=end

class Fixnum
  def %(other)
    raise ZeroDivisionError if other == 0

    self - other * (self / other)
  end
end
