  BIGBILLS = Hash[ 100,'hundred',
                   1000,'thousand',
                   1000000,'million',
                   1000000000,'billion',
                   1000000000000,'trillion']
               
class Fixnum
  def in_words

    words         = %w(zero one two three four five six seven eight nine ten eleven twelve)
    teen_words    = %w(thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    ty_words      = %w(' ' twenty thirty forty fifty sixty seventy eighty ninety)
    num = self

    if num < 100 && num >=20
      if num%10==0
        real_word = ty_words[num/10]
      else
        real_word = ty_words[num/10]+" #{words[num%10]}"
      end
    end

    if num >= 100
      bill = find_bill
      bill_words = (num/bill).in_words + ' '+ BIGBILLS[bill] 
      if (num % bill) != 0
        real_word = bill_words + ' '+ (num%bill).in_words 
      else
        real_word = bill_words
      end
    end
    real_word ||= words[num] || teen_words[num-13] 
  end


  def find_bill
    BIGBILLS.keys.select { |a| self/a != 0 }.last
  end

end


