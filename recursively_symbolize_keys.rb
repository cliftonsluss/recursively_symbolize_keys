class Hash
  def recursively_symbolize_keys
    h = Hash.new
    self.each do |k,v|
      if v.class == Hash
        h[k.to_sym] = v.recursively_symbolize_keys
      else
        h[k.to_sym] = v
      end
    end
    h
  end
end


