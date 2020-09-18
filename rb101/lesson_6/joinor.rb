#Write a method called joinor that will produce the following result:
#input is an array of numbers and an optional joining character and word
#output is a string delimited by the default or/ arguments or what the user input. 1 and 2 chars should be separated by or
#algo: initialize empty string, if 1 char return char, if 2 char return with or, if multiple return with delimiters

def joinor(empties, punctuation = ', ', word = 'or')
  returner = []
  if empties.size == 1  
    returner << empties[0]
  elsif empties.size == 2
    returner << empties[0] << " #{word} " << empties[1]
  else
    empties[0..-2].each { |square| returner << square << punctuation }
    returner << word <<  " #{empties[-1]}"
  end
  returner.join
end




p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

=begin
def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end
=end