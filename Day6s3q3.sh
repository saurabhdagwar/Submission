#!/bin/bash
#Palindrome Function
ispalindrome()
	{
		n=$@
		num=0
		while(( $n >= 1 ))
			do
			rem=`echo $n | awk '{print $1%10}'`
			num=$(( ($num * 10) + $rem  ))
			n=`expr $n / 10 `
			done
		echo " Palindrome of $@ is :" $num
		ispalindromeprime $num
	}
#Prime number Function
isprime()
{
	m=$(( $@ / 2 ))
	a=$@
	count=0
	for(( i=2;i<=$m;i++ ))
	do
		if [ `echo $a $i | awk '{print $1%$2}'` == 0 ]
		then
			echo "It is not a prime number "
			count=1
 		break;
		fi
	done
	if [ $count -eq 0 ]
	then
		echo "It is a prime number "
		ispalindrome $a
	fi

}

#Check Palindrome Prime number
ispalindromeprime()
{
		m=$(( $@ / 2 ))
		a=$@
		count=0
		for(( i=2;i<=$m;i++ ))
		do
			if [ `echo $a $i | awk '{print $1%$2}'` == 0 ]
			then
				echo "palindrome is not prime number "
				count=1
 				break;
			fi
		done
	if [ $count -eq 0 ]
	then
			echo "Palindrome  is a prime number "

	fi
}

#main shell

read -p "Enter number to check : " n
isprime $n

