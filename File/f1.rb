# 1) Viết chương trình thực hiện nhập vào danh sách tên nhân viên
#    kết thúc khi nhập vào chuỗi rỗng) rồi lưu vào một file.
#    Sau đó đọc lại danh sách nhân viên từ file, sắp xếp tên theo thứ tự tăng dần rồi in ra màn hình.

def nhap_dsnv
  str = ""
  begin
    print "Nhap ten nhan vien: "
    ten = gets.chomp
    str << ten + "\n" 
  end while ten.size != 0
  str.chomp
end

File.open('fl1_dsnv.txt', 'w') { |f| f.write nhap_dsnv }
content = File.readlines('fl1_dsnv.txt').sort
puts 'Danh sach nv sau khi sx:'
puts content
