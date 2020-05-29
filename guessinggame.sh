#program to guess the number of file in current working directory


function guessinggame
{
   echo "Guess how many files are there in current working directory:"
   read guess
   #calculating the number of files
   no_of_files=$(ls | wc -l)
} 

guessinggame 
while [[ $guess -ne $no_of_files ]]
do
   if [[ $guess -gt  $no_of_files ]]
   then
     echo "Your guess is too high!! Try again.."
   else
     echo "Your guess is too low!! Try again.."
   fi
   guessinggame  
done

echo "Congratulations !!! You guessed the right value.. The total number of files in this directory  are :$no_of_files"

