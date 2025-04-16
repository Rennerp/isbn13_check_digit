# frozen_string_literal: true

module ISBN13
  class CheckDigitCalculator
    def self.calculate(isbn_digits)
      raise ArgumentError, "ISBN must be 12 digits" unless isbn_digits.match?(/^\d{12}$/)

      sum = isbn_digits
              .chars
              .map(&:to_i)
              .each_with_index
              .map { |digit, index| index.even? ? digit : digit * 3 }
              .sum

      check_digit = (10 - (sum % 10)) % 10
      check_digit
    end

    def self.complete_isbn(isbn_digits)
      "#{isbn_digits}#{calculate(isbn_digits)}"
    end
  end
end
