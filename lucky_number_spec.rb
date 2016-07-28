require_relative 'luckynumber'

describe 'list_num' do
  it 'lists all the lucky numbers to stdout' do
    expect { list_num(100, 200) }.to output(/106\n115\n124\n133\n142\n151\n160\n169\n178\n187\n196\n/).to_stdout
  end

  it 'does not print lists if there are not any lucky numbers' do
    expect { list_num(10, 15) }.to_not output.to_stdout
  end

  it 'lists all the lucky numbers to stdout' do
    expect { list_num(1, 7) }.to output(/7/).to_stdout
  end
end

describe 'single_digit_sum' do
  it 'reduces the number to a single digit' do
    expect(single_digit_sum(62_431)).to equal 7
  end

  it 'reduces the number to a single digit' do
    expect(single_digit_sum(15_234)).to equal 6
  end

  it 'reduces the number to a single digit' do
    expect(single_digit_sum(3)).to equal 3
  end

  it 'reduces the number to a single digit' do
    expect(single_digit_sum(7)).to equal 7
  end
end

describe 'sum_numbers' do
  it 'sums the numbers' do
    expect(sum_numbers(456)).to equal 15
  end

  it 'sums the numbers' do
    expect(sum_numbers(1)).to equal 1
  end
end
