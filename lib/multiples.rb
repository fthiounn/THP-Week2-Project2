def is_multiple_of_3_or_5 (n)
	return ( n % 3 == 0 || n % 5 == 0 )? true : false
end
def sum_of_3_and_5_multiples (max_nb)
	return nil if ( !(max_nb.is_a? Integer) || max_nb < 0)
	return 0 if max_nb < 3
	output = 0;
	(3..max_nb-1).each {|n| is_multiple_of_3_or_5(n)? output+=n : "" }
	return output
end