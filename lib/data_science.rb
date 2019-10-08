def word_counter (corpus,dictionnary)
	return nil if (!corpus.kind_of? String || !dictionnary.kind_of?(Array) )
	corpus.downcase!
	occurence_hash = Hash.new
	dictionnary.each { |word|
		(count(corpus,word)!= 0) ? occurence_hash.merge!({word => count(corpus,word)}) : ""
	}	
	return occurence_hash
end
def count (corpus, word)
	return corpus.scan(/(?=#{word})/).count
end

def perform
	dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
	corpus = File.read("shakespeare.txt")
	puts "Voici le Hash des occurences : "
	puts word_counter(corpus,dictionnary)
end
perform