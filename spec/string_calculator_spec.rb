# frozen_string_literal: true

# spec/string_calculator_spec.rb
require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  it 'returns 0 for an empty string' do
    expect(StringCalculator.add('')).to eq(0)
  end

  it 'returns the number itself for a single input' do
    expect(StringCalculator.add('1')).to eq(1)
  end

  it 'returns sum of two numbers' do
    expect(StringCalculator.add('1,5')).to eq(6)
  end

  it 'returns sum of multiple numbers' do
    expect(StringCalculator.add('1,2,3,4')).to eq(10)
  end

  it 'handles newlines as delimiters' do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end

  it 'handles custom delimiters' do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end
end
