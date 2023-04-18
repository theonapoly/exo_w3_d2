def is_multiple_of_3_or_5?(current_number)
#    if current_number % 3 == 0 || current_number % 5 == 0
 #       return true
  #  else 
   #     return false 
    #end
    return (current_number % 3 == 0 || current_number % 5 == 0)

end

#puts is_multiple_of_3_or_5?(23)

def sum_of_3_or_5_multiples(final_number)
    final_sum = 0
    for num in (0..final_number-1)
        #puts "#{num} #{is_multiple_of_3_or_5?(num)}"
        if is_multiple_of_3_or_5?(num)
            final_sum = final_sum + num
        end      
    end
    return final_sum
end

puts sum_of_3_or_5_multiples(11)


