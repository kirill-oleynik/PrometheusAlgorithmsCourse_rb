# frozen_string_literal: true

RSpec.describe 'Insertion sort' do
  subject(:result) { insertion_sort(array) }
  context 'with sorted array called' do
    let(:array) { [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] }
    it { is_expected.to eq(array) }
  end
  context 'with unsorted array called' do
    let(:array) { [34, 78, 12, 56, 5] }
    it { is_expected.to eq(array.sort) }
  end
  context 'with random array called' do
    let(:array) do
      arr = []
      rand(0..100) { arr << rand(0..100) }
      return arr
    end
    it { is_expected.to eq(array.sort) }
  end
end
