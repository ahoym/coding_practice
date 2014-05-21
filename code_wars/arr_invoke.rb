class Array
	def invoke(method_name, *args, &block)
		self.map { |e| block_given? ? (e.__send__(method_name, *args) if yield e) : (e.__send__(method_name, *args)) }.compact
	end
end

class ExampleItem
  # notice that this method always returns "updated"
  def update(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
    "updated"
  end
end

items = [ExampleItem.new, nil, ExampleItem.new]

p update_results = items.invoke(:update, "argument 1", "argument 2") {|item| item != nil}

# ======================= Cleaner, does not have to .compact ===========================
class Array
  def invoke(method, *args, &block)
    select(&block).map {|item| item.send(method, *args) }
  end
end