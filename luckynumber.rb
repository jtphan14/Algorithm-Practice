input = ARGV

min_num = ARGV[0].to_i
max_num = ARGV[1].to_i

def list_num(min_num, max_num)
  for i in min_num..max_num
  end
end

def lucky_num?(num)
  return true if num == 7
end

def sum_num(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end

list_num(min_num, max_num)
puts sum_num(100)
