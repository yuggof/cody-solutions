=begin
Write a method called format_number which converts given integer number to string like this:

format_number(1234)    #=> '1_234'
format_number(-1234)   #=> '-1_234'
format_number(134567)  #=> '134_567'
format_number(49)      #=> '49'
=end

def format_number(number)
  fn = number
    .abs
    .to_s
    .split('')
    .reverse
    .each_slice(3)
    .map(&:join)
    .join('_')
    .reverse

  (number < 0 ? '-' : '') + fn
end
