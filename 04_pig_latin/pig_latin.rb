
def translate(sentence)
  vowels = %w(a e i o u y)
  s = sentence.split.map do |word|
  i = 0
  while !vowels.include? word[i,1]
    if ( word[i,2] == 'qu')
      i+=2
    else
      i+=1
    end
  end
  word[i..-1] + word[0,i] + 'ay'
  end
  s.join(' ')
end

