def caesar_cipher (str,n)
	return str if n == 0
	return str.split("").map! { |letter| 
		letter==" "? letter :
		((/[[:upper:]]/.match(letter)? 
			((letter.ord + n > 90)?  (letter.ord + n - 25).chr : (letter.ord + n).chr) : 
			((letter.ord + n > 122)?  (letter.ord + n - 25).chr :  (letter.ord + n).chr )
		))}.join("")
end