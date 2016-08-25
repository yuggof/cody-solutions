=begin
Implement a method 'change_object' in such a way that
object.size == 0 will return 'Hello World!' string.

object = Object.new
change_object(object)

object.size == 0 # should return 'Hello World!'
=end

def change_object(object)
  def object.size
    o = Object.new

    def o.==(other)
      other == 0 ? 'Hello World!' : super
    end

    o
  end
end
