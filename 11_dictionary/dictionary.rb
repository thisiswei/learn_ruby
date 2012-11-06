class Dictionary
  
  def entries
    @entries ||= {}
  end

  def add hash
    case hash
    when String
      entries[hash]=nil
    when Hash
      entries.merge!(hash) 

    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(keyword)
    entries.keys.include?(keyword)
  end

  def find(word)
    hash = {}
    entries.each do |k,v|
      if k.match(/^#{word}/)
        if not hash
          hash = Hash[k,v]
        else
          hash.merge!(Hash[k,v])
        end
      end
    end
    hash 
  end
  def printable
    entries.map do |k,v|
      %{[#{k}] "#{v}"}
    end.sort.join("\n")
  end
end
