def day_trader(array)
	return nil if !array.kind_of? Array
	profit = 0
	window = []
	array.each_with_index { |price,index| 
		for n in 0..index - 1 do
			if (array[ index ] - array[ n ]) > profit 
				profit = array[ index ] - array[n]
				window[ 0 ] = n
				window[ 1 ] = index
			end
		end
	}
	return window
end