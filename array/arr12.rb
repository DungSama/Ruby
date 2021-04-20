# 12) "Khởi tạo một mảng gồm n (n≤ 99) số tự nhiên sau đó hiển thị các dãy con tăng trong mảng.

def c1(arr)
  result = []
  cut = cutting(arr)
  step = 0
  for i in 0...cut.size
    res = []
    for j in step...cut[i]
      res << arr[j]
      step += 1
    end
    result << res
  end
  result
end

def cutting(arr)
  n = arr.size
  cut = [] # luu vi tri cat
    for i in 0...(n-1)
      if arr[i] > arr[i+1]
        cut << i + 1
      end
    end
    cut
end

p c1([1, 4, 5, 6, 8, 4, 10, 11, 1])

