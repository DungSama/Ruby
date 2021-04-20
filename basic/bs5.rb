# 5) Viết chương trình giải phương trình bậc 1 (ax + b = 0)

def c1(a, b)
  if a == 0 && b == 0
    puts 'PT vo so ngiem'
  elsif a == 0 && b != 0
    puts 'Pt  vo ngiem'
  else
    x = b / a
    puts "Nghiem cua pt #{a}x + #{b} la #{-x}"
  end
end

c1(2.0, 5)

