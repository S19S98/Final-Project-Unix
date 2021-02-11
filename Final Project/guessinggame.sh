
function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is low"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is high"
        else
            echo " Correct"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess