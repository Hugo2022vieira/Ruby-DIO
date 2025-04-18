# sorting_algorithms.rb

def bubble_sort(arr)
  n = arr.length
  (n - 1).times do
    (0...(n - 1)).each do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
  arr
end

def insertion_sort(arr)
  (1...arr.length).each do |i|
    key = arr[i]
    j = i - 1
    while j >= 0 && arr[j] > key
      arr[j + 1] = arr[j]
      j -= 1
    end
    arr[j + 1] = key
  end
  arr
end

def selection_sort(arr)
  n = arr.length
  (0...n).each do |i|
    min_idx = i
    (i + 1...n).each do |j|
      min_idx = j if arr[j] < arr[min_idx]
    end
    arr[i], arr[min_idx] = arr[min_idx], arr[i]
  end
  arr
end

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid...arr.length])
  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end

def quick_sort(arr)
  return arr if arr.length <= 1
  pivot = arr.delete_at(rand(arr.length))
  left, right = arr.partition { |x| x < pivot }
  quick_sort(left) + [pivot] + quick_sort(right)
end

def heap_sort(arr)
  n = arr.length
  (n / 2 - 1).downto(0) { |i| heapify(arr, n, i) }
  (n - 1).downto(1) do |i|
    arr[0], arr[i] = arr[i], arr[0]
    heapify(arr, i, 0)
  end
  arr
end

def heapify(arr, n, i)
  largest = i
  l = 2 * i + 1
  r = 2 * i + 2
  largest = l if l < n && arr[l] > arr[largest]
  largest = r if r < n && arr[r] > arr[largest]
  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i]
    heapify(arr, n, largest)
  end
end

# Teste
original = [64, 25, 12, 22, 11]
puts "Original: #{original}"
puts "Bubble Sort: #{bubble_sort(original.dup)}"
puts "Insertion Sort: #{insertion_sort(original.dup)}"
puts "Selection Sort: #{selection_sort(original.dup)}"
puts "Merge Sort: #{merge_sort(original.dup)}"
puts "Quick Sort: #{quick_sort(original.dup)}"
puts "Heap Sort: #{heap_sort(original.dup)}"
