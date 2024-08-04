# Iteratively and Recursive solution for the fibonacci sequence

def fibs(num)
  arr = [0, 1]
  if num <= 2
    puts arr[..num - 1]
  else
    (2..num - 1).each do |idx|
      arr << (arr[idx - 1] + arr[idx - 2])
    end
    arr
  end
end

def fibs_rec(num)
  return [0] if num == 1
  return [0, 1] if num == 2

  array = fibs_rec(num - 1)
  array << (array[-2] + array[-1])
end

p fibs 15
p fibs_rec 15
