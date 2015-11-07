class Lexiconomitron
	def eat_t string
		string.gsub(/[t]/i, '')
		#why the i???
	end

	def shazam words
		[words.last, words.first].map {|word| eat_t(word).reverse} 
	end

	def oompa_loompa words 
		small_words = words.select { |word| 	word.length <= 3 } || []
		small_words.map {|word| eat_t(word)}
		##why the last symbols there???!
		#it doesn't return anything!!
	end
end

ra = ["hello", "how", "are", "you", "doing"]
pi = Lexiconomitron.new
pi.shazam(ra)

