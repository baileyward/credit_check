# put this in credit_check.rb in you lib
class CreditCheck

  def validate?(card_number)
    count = 1
    total = 0
    valid = false

  # get every digit one at a time from the card number
    for digit in card_number.split("").reverse
      int_card_number = digit.to_i

      if count % 2 == 0
        puts "count: " + count.to_s
        puts "Even number: #{int_card_number}"

        doubled_int_card_number = int_card_number * 2
        # check to see if the card number needed to be summed. If it was over 9.
        if doubled_int_card_number > 9
          # converted to string so that we could get the characters (digit) one at a time.
          doubled_str_card_number = doubled_int_card_number.to_s
          #puts "Needs summing: " + doubled_int_card_number.to_s
          # taking the first character and turning it into an integer.
          first_digit= doubled_str_card_number[0].to_i
          # taking the second digit and turning it into an integer.
          second_digit = doubled_str_card_number[1].to_i
          # adding the first and second digit together
          puts "Sum: " + (first_digit + second_digit).to_s
          sum = first_digit + second_digit
          int_card_number = sum
          # had to save the numbers that go doubled but arent higher than 9.
        else
          int_card_number = doubled_int_card_number
        end

      end

      # that adds correct number to total count

      count = count + 1
      total = total + int_card_number
      puts "Total Count: " + total.to_s
      puts
    end

    if total % 10 == 0
      valid = true
    end

    return valid
  end
end

# Put this in test class
card_checker = CreditCheck.new
if card_checker.validate?("5541801923795240")


  # class CreditCheck
  #
  #   def initialize
  #     @card_number = "4929735477250545"
  #     @card_array = @card_number.chars
  #   end
  #
  #   def odd_numbers
  #     @card_array.values_at(1, 3, 5, 7, 9, 11, 13, 15)
  #   end
  #
  #   def even_numbers
  #     @card_array.values_at(0, 2, 4, 6, 8, 10, 12, 14)
  #   end
  #
  #   def double_even_values
  #     doubled = even_numbers.map do |even_card_number|
  #         doubled_even_number = even_card_number.to_i * 2
  #       end
  #     doubled
  #   end
  #
  #   def digits_under_ten
  #     under_ten = double_even_values.collect do |even_value|
  #       if even_value.to_i < 10
  #         even_value / 2
  #       end
  #     end
  #     return under_ten.compact!
  #   end
  #
  #   def digits_over_ten
  #    doubled = double_even_values.collect do |i|
  #       if i.to_i >= 10
  #         i
  #       end
  #     end
  #     return doubled.compact!
  #   end
  #
  #   def adding_over_ten
  #     digits_over_ten.map do |i|
  #       x = i.to_s
  #       z = x.split("")
  #       y = z[0].to_i + z[1].to_i
  #     end
  #   end
  #
  #   def add_all
  #     total_values = 0
  #
  #     odd_numbers.map do |i|
  #       i.to_i
  #       total_values += i.to_i
  #     end
  #
  #     adding_over_ten.map do |i|
  #       total_values += i.to_i
  #     end
  #
  #     digits_under_ten.map do |i|
  #       total_values += i.to_i
  #     end
  #
  #     return total_values
  #   end
  #
  #   def valid?
  #     if add_all % 10 == 0
  #       puts "Card Number is Valid"
  #
  #     else
  #       puts "Card Number is Invalid"
  #
  #     end
  #   end
  # end
  #
  # card_number = CreditCheck.new
  # puts card_number.odd_numbers
  # puts card_number.even_numbers
  # puts card_number.double_even_values
  # puts card_number.digits_under_ten
  # puts card_number.digits_over_ten
  # puts card_number.adding_over_ten
  # puts card_number.add_all
  # puts card_number.valid?
