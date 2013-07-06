class ScrabbleGame
	
	def score(word)
	#hash indicates values for each letter
	letterscore = {A: 1, B: 3, C: 3, D: 2, E: 1, F: 4, G: 2, H: 4, I: 1, J: 8, K: 5, 
		L: 1, M: 3, N: 1, O: 1, P: 3, Q: 10, R: 1, S: 1, T: 1, U: 1, V: 4, W: 4, X: 8, Y: 4, Z: 10} 


	

		tiles = word.split(//) #splits word into an array
		tiles.each do |letter| #converts each letter in array to uppercase
			letter.upcase!
		end
			
		score = [] #this is currently an empty array, soon to be filled

		tiles.each do |letter|
			score.push(letterscore[letter.to_sym]) #accesses hash and converts letters to symbols; score.push pushes the values we got from hash into the empty score array
		end
		final_score = score.reduce(:+) #assigns value to final_score; score.reduce(:+) adds each element in the array together
		return final_score #gives the user the score
	end


end
Scrabble = ScrabbleGame.new