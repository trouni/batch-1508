require_relative "../credit_card_checker"

describe "#credit_card_checker(credit_card_number)" do
  it 'returns "Invalid credit card number" when given an empty string' do
    actual_value = credit_card_checker("")
    expected = "Invalid credit card number"
    expect(actual_value).to eq(expected) # equivalent to actual_value == expected in RSpec
  end

  it 'returns "Valid credit card number" when given "4242 4242 4242 4242"' do
    expect(credit_card_checker("4242 4242 4242 4242")).to eq("Valid credit card number")
  end

  it 'returns "Valid credit card number" when given "4242-4242-4242-4242"' do
    expect(credit_card_checker("4242-4242-4242-4242")).to eq("Valid credit card number")
  end

  it 'returns "Valid credit card number" when given "4242424242424242"' do
    expect(credit_card_checker("4242424242424242")).to eq("Valid credit card number")
  end

  it 'returns "Invalid credit card number" when given "4242 4242 4242 42424"' do
    expect(credit_card_checker("4242 4242 4242 42424")).to eq("Invalid credit card number")
  end

  it 'returns "Invalid credit card number" when given "4242 4242 4242 424"' do
    expect(credit_card_checker("4242 4242 4242 424")).to eq("Invalid credit card number")
  end

  it 'returns "Invalid credit card number" when given "4242 4242 4242 424A"' do
    expect(credit_card_checker("4242 4242 4242 424A")).to eq("Invalid credit card number")
  end

  it 'returns "Invalid credit card number" when given "4242_4242_4242_4242"' do
    expect(credit_card_checker("4242_4242_4242_4242")).to eq("Invalid credit card number")
  end
end

describe "credit_card_checker_enhanced(credit_card_number)" do
  it 'returns "Valid credit card number" when given "4242 4242 4242 4242"' do
    expect(credit_card_checker_enhanced("4242 4242 4242 4242")).to eq("Valid credit card number")
  end

  it 'returns "Invalid credit card number" when given "4242 4242 4242 4243"' do
    expect(credit_card_checker_enhanced("4242 4242 4242 4243")).to eq("Invalid credit card number")
  end
end
