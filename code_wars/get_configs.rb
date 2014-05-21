class Hash
  def get_value( default, *args )
    val = self.fetch(args.shift, default)
    while !args.empty? && val.class == Hash
      val = val.fetch(args.shift, default)
    end
    args.empty? ? val : default
  end
end

class Hash
  def get_value default, *args
    return default if args.empty?
    args.reduce(self) {|h, k| h.is_a?(Hash) ? h.fetch(k, default) : default }
  end
end



config = { :files => { :mode => 0x777 }, :name => "config" }

#config.get_value( 0x0, :files, :mode ) # == 0x777
config.get_value( "", "config", :name )  # == "config"
#config.get_value( 80, :port ) # == 80
#config.get_value( "cfg", :files, :extension ) # == "cfg"
