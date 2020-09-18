#Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
#The return value should look like this:

#[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

#input is a hash
#output is an array

#algo: create empty array. iterate through each value of hash. if type is fruit then capitalize the colors and add them to the array. if type is vegetable, upcase and add to array.

array = []

hsh.each_value do |hash|
  if hash[:type] == 'fruit'
    array << hash[:colors].map{|color| color.capitalize}
  else
    array << hash[:size].upcase
  end
end

p array