# 3) Tính tam giác: Nhập vào ba số a,b,c bất kì.
#    Kiểm tra xem nó có thể là độ dài ba cạnh hay không,
#    nếu không thì in ra màn hình ' Không là ba cạnh của một tam giác'.
#    Ngược lại, thì in diện tích, chu vi của tam giác ra màn hình.

def tam_giac(a, b, c)
  tg = [a, b, c]
  if tg.any? { |x| x <= 0 }
    puts '3 canh phai > 0'
  end

  arr = tg.sort
  if arr[0] + arr[1] <= arr[2]
    puts 'Khong la 3 canh cua tam giac'
  else
    nua_cv = (a + b + c) / 2
    dt = Math.sqrt(nua_cv * (nua_cv - a) * (nua_cv - b) * (nua_cv -c))
    cv = a + b + c
    puts "Dien tich tam giac = #{dt}"
    puts "Chu vi tam giac = #{cv}"
  end
end

# cach 2: 

def c2(a, b, c)
  tg = [a, b, c]
  if tg.all? {|x| x > 0}
    if a + b <= c || a + c <= b || b + c <= a
      puts 'Ko phai 3 canh tam giac'
    else
      nua_cv = (a + b + c) / 2
      dt = Math.sqrt(nua_cv * (nua_cv - a) * (nua_cv - b) * (nua_cv -c))
      cv = a + b + c
      puts "Dien tich tam giac = #{dt}"
      puts "Chu vi tam giac = #{cv}"
    end
  else
    puts '3 canh phai > 0'
  end
end

# cach 3

def c3(a, b, c)
  if [a, b, c].any? { |x| x <= 0 }
    puts '3 canh phai > 0'
  else
    canhln = [a, b, c].max
    tong_3_canh = a + b + c
    if 2 * canhln >= tong_3_canh
      puts 'Khong 3 canh cua tam giac '
    else
      nua_cv = tong_3_canh / 2
      dt = Math.sqrt(nua_cv * (nua_cv - a) * (nua_cv - b) * (nua_cv -c))
      puts "Dien tich tam giac = #{dt}"
      puts "Chu vi tam giac = #{tong_3_canh}"
    end
  end
end

c3(1, 4, 3)




