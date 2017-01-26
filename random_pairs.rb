# define a method called create_pairs
def create_pairs(names)
	array = [] #creates empty holder array
	#setting the array that is inputted in the create_pairs 
	#parameter names and shuffling it and dividing it into
	#slices that are each two items long.
	array_paired_names = names.shuffle.each_slice(2)

	#iterating array_paired_names once for each pair.
	array_paired_names.each do |pairs|
		#if the length of pairs is equal to 1, then do this.
		if pairs.length == 1

			#pushes names into array
			array << names

		#if the length of pairs is equal to 2, then do this.
		elsif pairs.length == 2

		#push pairs into array.	
		array << pairs

		else
			#push pairs into the last spot in array.
			array.last << pairs
		end
	end
		#call array
		 array
end

# Call create_pairs with this array of names inside it.
create_pairs(['Dan', 'Marv', 'Tim', 'Shirley','April', 'Chloe', 'Tommy', 'Brian'])
