min_num = ARGV[0].to_i
max_num = ARGV[1].to_i

def list_num(min_num, max_num)
  (min_num..max_num).each do |i|
    puts i.to_s if lucky_num?(single_digit_sum(sum_numbers(i)))
  end
end

def lucky_num?(num)
  return true if num == 7
end

def single_digit_sum(num)
  return num if  num.to_s.length == 1
  single_digit_sum(sum_numbers(num))
end

def sum_numbers(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end

list_num(min_num, max_num)
