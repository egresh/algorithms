require 'bubble_sort'
include BubbleSort

RSpec.describe 'BubbleSort' do
  it '#bubble_sort sorts an array' do
    list = [8, 2, 1, 0, 4, 9, 7, 5, 6, 3]
    sorted = bubble_sort(list)
    expect(sorted).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

  it '#bubble_sort_worst_case computes the worst case scenario' do
    expect(bubble_sort_worst_case(5)).to eq(20)
    expect(bubble_sort_worst_case(10)).to eq(90)
    expect(bubble_sort_worst_case(20)).to eq(380)
    expect(bubble_sort_worst_case(40)).to eq(1560)
  end
end
