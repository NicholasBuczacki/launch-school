words = ['laboratory', 'experiment', 'Pans Labrynth', 'elaborate', 'polar bear']

words.each do |word|
  if /lab/ =~ word
    puts word
  end
end