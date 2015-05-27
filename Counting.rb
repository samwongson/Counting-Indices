# def count_letters(string)
#   @letters = Hash.new(0)
#   string.split('').each {|letter| @letters[letter] += 1 }
#   @letters.delete(" ")
#   puts @letters
# end

# count_letters("lighthouse in the house...")

def indice_count(string)
  @letters = Hash.new()
  
  string.split('').each_with_index do |letter, index|
    
    if @letters[letter].nil?
       @letters[letter] = []
    end
    @letters[letter] << index
  end

  @letters
  
end

puts indice_count("lighthouse in the house...")