class XmlDocument
   
  def hello(attribute={})
    if attribute == {}
      '<hello/>'
    else
      attribute.map do |k,v|
       "<hello #{k}='#{v}'/>"
      end.join(' ') 
    end
  end
end

