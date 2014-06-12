def grandfather_clock(hours, &block)

	times_ring = hours % 12
	times_ring = 12 if times_ring == 0

	(times_ring).times do
		block.call
	end
end
