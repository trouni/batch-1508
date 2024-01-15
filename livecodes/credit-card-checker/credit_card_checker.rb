# 1. Define a regular expression to match a credit card pattern
CREDIT_CARD_PATTERN = /\A(\d{4}( |-)?){3}\d{4}\z/

def credit_card_checker(credit_card_number)
  # 2. Use the regex with one of those methods:
  #   .match
  #   .match?
  #   =~
  # if credit_card_number.match(CREDIT_CARD_PATTERN)
  # if credit_card_number =~ CREDIT_CARD_PATTERN
  if credit_card_number.match?(CREDIT_CARD_PATTERN)
    # 3. Return "Valid credit card number" or "Invalid credit card number"
    "Valid credit card number"
  else
    "Invalid credit card number"
  end
end

def credit_card_checker_enhanced(credit_card_number)
  if credit_card_number.match?(CREDIT_CARD_PATTERN) && luhn_algorithm_valid?(credit_card_number)
    "Valid credit card number"
  else
    "Invalid credit card number"
  end
end

def luhn_algorithm_valid?(credit_card_number)
  # See https://en.wikipedia.org/wiki/Luhn_algorithm#Description

  # strip all the spaces and hyphens and split the remaining string into the individual digits
  cleaned_numbers = credit_card_number.gsub(/[ -]/, '').chars

  # drop the last digit and store it (after converting to integer)
  last_digit = cleaned_numbers.delete_at(-1).to_i

  sum = 0
  # reverse the order to start the calculation from the rightmost digit
  cleaned_numbers.reverse.each_with_index do |digit, index|
    # double the value of every second digit and sum all the digits
    sum += index.even? ? digit.to_i * 2 : digit.to_i
  end

  check_digit = (10 - (sum % 10)) % 10 # % is the modulo operator
  check_digit == last_digit
end
