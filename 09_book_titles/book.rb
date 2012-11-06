class Book
  attr_reader :title

  def title= title
    @title = title.split.map{|t| %w(and in the of a an).include?(t) ? t : t.capitalize}.join(' ')
    @title = @title[0].upcase + @title[1..-1]
  end
    

    

end
