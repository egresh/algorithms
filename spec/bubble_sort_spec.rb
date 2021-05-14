require 'bubble_sort'
include BubbleSort

RSpec.describe 'BubbleSort' do
  let(:list) { [8, 2, 1, 0, 4, 9, 7, 5, 6, 3] }

  it '#bubble_sort sorts an array' do
    sorted = bubble_sort(list)
    expect(sorted).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

  it '#bubble_sort_worst_case computes the worst case scenario' do
    expect(bubble_sort_worst_case(5)).to eq(20)
    expect(bubble_sort_worst_case(10)).to eq(90)
    expect(bubble_sort_worst_case(20)).to eq(380)
    expect(bubble_sort_worst_case(40)).to eq(1560)
  end

  it '#bubble_sort sets and instance variable @bubble_sort_comparisons' do
    sorted = bubble_sort(list)
    expect(instance_variable_get("@bubble_sort_comparisons")).not_to be_nil
  end

  it '#bubble_sort sets and instance variable @bubble_sort_swaps' do
    sorted = bubble_sort(list)
    expect(instance_variable_get("@bubble_sort_swaps")).not_to be_nil
  end
end
