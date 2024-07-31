# Iteratively and Recursive solution for the fibonacci sequence

def fibs n
  arr = [0, 1]
  if n <= 2
    puts arr[..n -1]
  else
    for i in 2..n-1
      arr << (arr[i-1] + arr[i-2])
    end
    arr
  end
end

def fibs_rec n
  return [0] if n == 1
  return [0, 1] if n == 2

  array = fibs_rec(n - 1)
  array << (array[-2] + array[-1])
end

p fibs 15
p fibs_rec 15
