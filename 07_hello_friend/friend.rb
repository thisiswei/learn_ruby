class Friend
  def greeting(friend=nil)
    unless friend==nil
      "Hello, #{friend}!"
    else
      "Hello!"
    end
  end
end
