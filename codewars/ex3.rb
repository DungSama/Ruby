# Build Tower by the following given argument:
# number of floors (integer and always greater than 0).

#[
#   '  *  ', 
#   ' *** ', 
#   '*****'
# ]

def towerBuilder(n)
  (0...n).map do |i|
    space = ' ' * (n - i)
    stars = '*' * (i * 2 + 1)
    space + stars + space
  end
end

p towerBuilder(3)