def numeral_roman (number)
  numerals = { 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}
  output = []
  romanNumerals = []
  remainder = number

# numerals.each do |number|
  if number <= 3999
    numerals.each do |value, numeral|
      total = remainder.divmod(value)
      if total[0] != 0
        output << numeral * total[0]
        remainder = total[1]
      end
    end

    # if numerals[number]
    #   output << numerals[number]
    # else
    #   numerals.each do |value, numeral|
    #     if number % value != 0 #remainder is not zero, number is not in hash
    #       total = number.divmod(value)
    #       # divmod returns this[quotient, remainder]
    #       occurenceAmount = total[0] * value #how many roman numeral occurences
    #       #total[0] is the quotient
    #       remainderAmount = total[1]

    #       newTotal = total.to_s #turn total to string, newTotal is new string
    #       newTotal.gsub(occurenceAmount/numerals, numeral)
    #       newTotal #the new string with roman numeral value returned
    #       output << numerals[remainderAmount]
    #       output << newTotal
    #     end

    #   end
    # end
  else
    alert("This number cannot be a roman numeral")
  end

  output.join("")
end
p numeral_roman(8)

#    numerals.each do |key,value|
#       if number == key
#         output << value
#           # number -= key
#       elsif number%key != 0 #Modulus - Divides left hand operand by right hand operand and returns remainder
#         n = number%key #remainder will be n
#         # puts n
#         key + n = number

#       end
#     end
