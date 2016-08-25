=begin
Writing ordinary if statement is boring. Implement this funny looking conditional statement.

(1 == 1).--> { puts 'true' } { puts 'false' }
# should print 'true'
(0 >= 1).--> { puts 'true' } { puts 'false' }
# should print 'false'
(0 >= 1).--> { puts 'true' }
# should do nothing
=end

module FancyIf
  def -(l)
    if self
      l.call
    else
      yield if block_given?
    end
  end
end

[TrueClass, FalseClass].each { |c| c.include(FancyIf) }
