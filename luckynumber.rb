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
#
def recursion(num)
  return num if  num.to_s.length == 1
  recursion(sum_num(num))
end
#
# def
#   until sum_num(num).length == 1
#     num = sum_num(num)
#     sum_num(num)
#   end
#
#   end
# end
def sum_num(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end

list_num(min_num, max_num)
puts recursion(sum_num(62431))
