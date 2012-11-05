def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word,times=2)
  ([word]*times).join(' ')
end

def start_of_word(word,num)
  word[0..num.to_i-1]
end


def first_word(sentence)
  sentence.split(' ')[0]
end

def titleize(sentence)
  s=sentence.split.map{|word| %w(and the over).include?(word) ? word : word.capitalize}.join(' ')
  s[0].upcase + s[1..-1]
end
