def matrix_mult(a, b)
  c=[]
	a.length.times do |i|
		row = []
		b.length.times do |j|
			value = 0
			a[i].length.times do |k|
				value += a[i][k]*b[k][j]
			end
			row << value
		end
		c << row
	end
	return c
end

def matrix_mult(a, b)
  a.each_with_index.collect do |col, i|
    col.each_with_index.collect do |_, j|
        a[i].zip(b.transpose[j]).
          collect {|x, y| x * y}.
          inject(:+)
    end
  end
end

def matrix_mult(a, b)
  b = b.transpose
  a.map do |row|
    row.each_index.map do |j|
      row.zip(b[j]).reduce(0) { |sum, (x, y)| sum + x * y }
    end
  end
end

def matrix_mult(a, b)
    row_size = a[0].size
    column_size = a.size
    rows = Array.new(row_size) {|i|
      Array.new(column_size) {|j|
        (0 ... column_size).inject(0) do |vij, k|
          vij + a[i][k] * b[k][j]
        end
      }
    }
    return rows
end