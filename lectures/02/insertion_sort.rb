# frozen_string_literal: true

def insertion_sort(arr)
  (1...(arr.length)).each do |i|
    j = i
    while j > 0
      arr[j], arr[j - 1] = arr[j - 1], arr[j] if arr[j - 1] > arr[j]
      j -= 1
    end
  end
  arr
end
