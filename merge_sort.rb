def merge_sort(array)
  new_array = []
  initial_array = array
  arry = []
  arry2 = []

  #split if needed
  if initial_array.length == 1
    return initial_array
  end

  arry = initial_array.slice!(0, initial_array.length/2)
  arry2 = initial_array
  arry = merge_sort(arry).flatten
  arry2 = merge_sort(arry2).flatten
  p arry
  p arry2
  
  def cut_array(array)
    return array.length == 1 ? [] : array.slice(1..-1)
  end

  #sort array
  while !arry.empty? && !arry2.empty?
    if arry[0] > arry2[0]
      new_array << arry2.slice(0)
      arry2 = cut_array(arry2)
    else
      new_array << arry.slice(0)
      arry = cut_array(arry)
    end
  end

  if arry.empty?
    return new_array + arry2
  else
    return new_array + arry
  end
end

arry = [1,5,3,6,3,2,4,5,3,45,2,5,3456,236,2346,2346,2346,23456,456,2456,456,3456]
result = merge_sort(arry)

p result