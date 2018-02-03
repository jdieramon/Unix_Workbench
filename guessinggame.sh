function make_guess {
	echo "Try yo make another guess:"
}


nfile=$(ls -l | wc -l )
#echo $nfile
echo "Please, type in how many files you think are in the current directory:"
read guess
while [[ $nfile -ne guess ]] 
do
	
	if [[ guess -gt $nfile ]]
	then
	 echo "Your guess is too high."
	 make_guess
	else
	 echo "Your guess is too low."
	 make_guess
	fi 
	read guess2
	let guess=$guess2
done
echo "Congrats. You nailed it!. Game over."
