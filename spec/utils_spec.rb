require 'utils'

include Utils

RSpec.describe 'Utils#factorial_iterative' do
  it 'calculates a factorial number' do
    fact = factorial_iterative(5)
    expect(fact).to eq(120)
  end
end

RSpec.describe 'Utils#factorial_recursive' do
  it 'calculates a factorial number' do
    fact = factorial_recursive(5)
    expect(fact).to eq(120)
  end
end

RSpec.describe 'Utils#generate_array' do
  it 'defaults to 10 elements' do
    a = generate_array
    expect(a.size).to eq(10)
  end

  it 'takes a parameter "elements"' do
    a = generate_array(elements: 20)
    expect(a.size).to eq(20)
  end

  it 'takes a parameter "max_element_size"' do
    a = generate_array(max_element_size: 3)
    expect(a.max).to eq(2)
  end
end

RSpec.describe 'Utils#lcm_manual' do
  it 'computes the least common multiple' do
    lcm = lcm_manual(10, 7)
    expect(lcm).to eq(10.lcm(7))
  end

  it 'computes the greatest common denominator' do
    gcd = gcd_manual(100, 150)
    expect(gcd).to eq(100.gcd(150))
  end
end
