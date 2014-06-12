# Given n players with a skill level, divide the players into two equal
#    teams in number such that the skill difference between the teams is
#    minimum.

# Finds the total skill of whatever is called within.
def skill_sum(arr)
	arr.inject(0) {|sum,num| sum + num}
end

=begin
def even_teams(arr)
	temp = arr.dup
	# Finds number of players per team and places the two best players
	#   on opposite teams
	playercap = temp.length / 2 - 2
	temp.sort!.reverse!
	team1 = []; team1 << temp.shift
	team2 = []; team2 << temp.shift
	i = 0

	while i <= playercap
		diff = skill_sum(team1) - skill_sum(team2)
		if diff > 0
			team1 << temp.pop
			team2 << temp.shift
		elsif diff < 0
			team1 << temp.shift
			team2 << temp.pop
		end
		i += 1
	end

	if temp.length == 1
		if diff > 0
			team2 << temp.shift
		elsif diff < 0
			team1 << temp.shift
		end
	end

	puts "Team 1 consists of #{team1}"
	puts "Team 2 consists of #{team2}"
end
=end
def unique_shuffle(arr)
	seen = []

	((arr.uniq.length * arr.length)*arr.length).times do 
		array = arr.shuffle
		seen << array if !seen.include?(array)
	end
	seen = seen.uniq
	return seen.length
end

def even_teams(arr)

	if arr.length % 2 == 0
		playercap1 = playercap2 = arr.length / 2
	else
		playercap1 = arr.length/2 + 1
		playercap2 = arr.length/2
	end
	seen = []
	min_skill_diff = arr.max - arr.min
	set_team1 = []
	set_team2 = []

	(unique_shuffle(arr)).times do 
		stop_it = seen.length + 1

		until seen.length == stop_it
			lol = arr.shuffle
			seen << lol if !seen.include?(lol)
		end

		team1 = lol.slice(0,playercap1)
		team2 = lol.slice(playercap1,lol.length-1)

		diff = (skill_sum(team1) - skill_sum(team2)).abs

		if diff < min_skill_diff
			min_skill_diff = diff
			set_team1 = team1
			set_team2 = team2
		end
	end

	puts "Team 1 consists of #{set_team1}"
	puts "Team 2 consists of #{set_team2}"
	puts "The skill difference between the teams is #{min_skill_diff}"

end

# ------------ Another way to do it, cleaner and faster -----------------
# --------------- still need efficient way to find all possible combos --
def skill_sum(a_skill)
	a_skill.inject(0) {|sum,num| sum + num}
end

def uniq_shuffle(a_players)
	seen = []

	# Need a quick and efficient way to find all possible combinations of
	#    teams. Factorial generates too large a number when dealing with 
	#    even just a small group of players.
	((a_players.uniq.length * a_players.length)*a_players.length).times do 
		a_playersay = a_players.shuffle
		seen << a_playersay if !seen.include?(a_playersay)
	end

	seen = seen.uniq

	return seen
end

def even_teams(a_players)

	if a_players.length % 2 == 0
		team1_size = team2_size = a_players.length / 2
	else
		team1_size = a_players.length/2
		team2_size = team1_size + 1
	end
	test_it = uniq_shuffle(a_players)
	team1 = []
	team2 = []
	min_diff = (a_players.max + a_players.min) / 2

	test_it.each do |possible_teams|
		temp1 = possible_teams.slice(0,team1_size)
		temp2 = possible_teams.slice(team1_size, team2_size)
		diff = (skill_sum(temp1) - skill_sum(temp2)).abs

		if diff < min_diff
			min_diff = diff
			team1 = temp1.sort
			team2 = temp2.sort
		end
	end

	puts "The minimum difference in skill is #{min_diff}"
	puts "Team 1 consists of #{team1} with a skill level of " + (skill_sum(team1)).to_s
	puts "Team 2 consists of #{team2} with a skill level of " + (skill_sum(team2)).to_s
end
