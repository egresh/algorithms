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
