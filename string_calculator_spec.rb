require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe "Add string" do
    context 'when given an empty string' do
      it 'returns 0' do
        string = StringCalculator.new
        expect(string.add("")).to eq(0)
      end
    end

    context 'when given a single number' do
      it 'returns the number' do
        calculator = StringCalculator.new
        expect(calculator.add('1')).to eq(1)
      end
    end

    context 'when given two numbers separated by a comma' do
      it 'returns the sum of the numbers' do
        calculator = StringCalculator.new
        expect(calculator.add('1,5')).to eq(6)
      end
    end

    context 'when given multiple numbers separated by a comma' do
      it 'returns the sum of multiple comma-separated numbers' do
        expect(StringCalculator.new.add("1,2,3,4,5")).to eq(15)
      end
    end

    context 'when given multiple numbers separated by commas and new lines' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.new.add("1\n2,3")).to eq(6)
      end
    end
  end
end
