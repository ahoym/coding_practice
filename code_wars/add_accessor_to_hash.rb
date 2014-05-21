class Hash
  def method_missing(symbol, *args)
    _, key, assign = symbol.to_s.match(/^_([^=]+)(=?)/).to_a
    return super(symbol, args) unless key
    key = key.to_sym if has_key? key.to_sym
    if assign == '='
      key = key.to_sym unless has_key? key
      self[key] = args[0]
    else
      self[key]
    end
  end
end