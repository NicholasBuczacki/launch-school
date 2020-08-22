#First attempt did not return only names, included sisters/brothers. Also returned a hash rather than an array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
immediate_family = family.select{|k,v| (k == :sisters) || (k == :brothers)}.values.flatten

puts immediate_family

