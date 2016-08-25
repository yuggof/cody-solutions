=begin
Here is the funny method I wrote once:

def ruby_love
  We ♥  Ruby! What about you?
end

This method should return 'I ♥ Ruby too!' string. You can't change ruby_love method at all.
=end

#def ♥'(_)
#end

%i[We ♥ Ruby! What about you?].each do |s|
  define_method(s) { |_ = nil| 'I ♥ Ruby too!' }
end

def ruby_love
  We ♥  Ruby! What about you?
end
