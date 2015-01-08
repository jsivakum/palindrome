class String
  define_method(:palindrome?) do
    new_array = self.split(" ")

  #  binding.pry
    new_array = new_array.join("")
    clean_array=new_array.delete_punctuation()
    clean_array.upcase!()

    if clean_array.in_reverse() == clean_array
      return true
    else
      return false
    end
  end

  define_method(:in_reverse) do
    array_of_letters = self.split("")
    array_to_return = []
    array_of_letters.each() do |letter|
      array_to_return.unshift(letter)
    end
    array_to_return.join("")
  end

  define_method(:delete_punctuation) do
    punctuation = [",", ".", "!", "?", "-"]
    array_of_letters = self.split("")
    punctuation.each() do |punc|
      array_of_letters.each() do |letter|
        array_of_letters.delete(punc)
      end
    end
    array_of_letters.join("")
  end

end



# class String
#   define_method(:palindrome?) do
#     new_array = self.split(" ")
#     new_array = new_array.join("")
#     new_array.upcase!()
#
#     if new_array.reverse() == new_array
#       return true
#     else
#       return false
#     end
#   end
# end
