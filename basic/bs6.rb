# 6) Viết chương trình giải bất phương trình bậc 1 (ax + b > 0)

def c1(a, b)
  if a == 0 && b > 0
    puts 'PT vo so ngiem'
  elsif a == 0 && b <= 0
    puts 'Pt  vo ngiem'
  elsif a > 0
  x = b/a
  puts " nghiem cua bat pt x > #{x}"
  else 
  puts " nghiem cua bat pt x < #{x}"
  end
end

c1(2.0, 5)                                               