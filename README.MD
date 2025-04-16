# ISBN-13 Check Digit Calculator

This Ruby gem calculates the check digit for a 12-digit ISBN-13 number using the standard algorithm.

## Installation

Clone the repo and run specs with RSpec:
```bash
bundle install
rspec
```

## Utilization Example

Open a ruby terminal and type the following

```ruby
require_relative 'lib/isbn13'

ISBN13::CheckDigitCalculator.complete_isbn("978014300723")
```