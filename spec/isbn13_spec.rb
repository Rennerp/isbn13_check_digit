# frozen_string_literal: true

require 'rspec'
require_relative '../lib/isbn13'

RSpec.describe ISBN13::CheckDigitCalculator do
  describe '.calculate' do
    it 'calculates the correct check digit' do
      expect(described_class.calculate('978014300723')).to eq(4)
      expect(described_class.calculate('978186197271')).to eq(2)
    end

    it 'raises an error for invalid input' do
      expect { described_class.calculate('9780ABC00723') }.to raise_error(ArgumentError)
      expect { described_class.calculate('123456') }.to raise_error(ArgumentError)
    end
  end

  describe '.complete_isbn' do
    it 'returns the full 13-digit ISBN' do
      expect(described_class.complete_isbn('978014300723')).to eq('9780143007234')
    end
  end
end
