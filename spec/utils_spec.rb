require 'utils'

include Utils

RSpec.describe 'Utils#factorial' do
  it 'calculates a factorial number' do
    fact = factorial(5)
    expect(fact).to eq(120)
  end
end
