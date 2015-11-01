class User
  attr_reader :rank, :progress

  def initialize
		@rank = -8
		@progress = 0
	end

	def inc_progress(p_rank)
    raise error if p_rank > 8 || p_rank < -8 || p_rank == 0
		temp = @rank
		p_rank -= 1 if p_rank >= 1
		temp -=1 if @rank >= 1
		diff = p_rank - temp

		if diff > 0
			add_progress((10*diff**2))
		elsif diff == 0
			add_progress(3)
		elsif diff == -1
			add_progress(1)
		end
	end

	def add_progress(points)
    return 0 if @rank == 8
		@progress += points
		(@rank += (@progress/100); @progress%=100) if @progress >= 100
		@rank += 1 if @rank == 0
    @progress = 0 if @rank == 8
	end

end


class User
  def initialize
    @progress_max = 1500
    @progress = 0
    @ranks = [-8,-7,-6,-5,-4,-3,-2,-1,1,2,3,4,5,6,7,8]
  end
  
  def rank
    @ranks[@progress / 100]
  end
  
  def progress
    @progress % 100
  end
  
  def inc_progress(kata_rank)
    raise ArgumentError unless @ranks.include? kata_rank
    d = (kata_rank > 0 ? kata_rank-1 : kata_rank) - (rank > 0 ? rank-1 : rank)
    @progress += d < -1 ? 0 : d == -1 ? 1 : d == 0 ? 3 : 10*d*d 
    @progress = @progress_max if @progress > @progress_max
  end
end