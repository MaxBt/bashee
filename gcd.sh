gcd () #takes two args
{
if [[ $1 -eq $2 ]]; then echo "GCD is $1"
elif [[ $1 -gt $2 ]]
then let tmp=$1-$2
echo "tmp is $tmp"
gcd $tmp $2
else
let tmp1=$2-$1
echo "tmp1 is $tmp1"
gcd $tmp1 $1
fi
}

while [[ -z "" ]]
do
read num1 num2
if [[ -z $num1  || -z $num2  ]]
then echo "bye"
exit
fi
gcd $num1 $num2
done
