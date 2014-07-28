require('rspec')
require('rn_reverse')

describe('numeral_roman') do
  it('gives the correct value for corresponding roman numeral') do
    numeral_roman(1).should(eq("I"))
  end

  it('puts together the correct roman numerals for the number given') do
    numeral_roman(8).should(eq("VIII"))
  end
end
