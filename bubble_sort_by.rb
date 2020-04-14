def bubble_sort_by(arr)
  return arr if arr.size <= 1

  sorted = false
  until sorted
    sorted = true
    (arr.length - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
  end
  arr
end
sorted = bubble_sort_by(%w[hello dfhadfhad asg asdgafhafdhadheh dasfhadfhdafhafghafh as]) do |left, right|
  left.length - right.length
end
p sorted 