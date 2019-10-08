sum () { let local tmp=$1+$2; echo $tmp; }
sub () { let local tmp=$1-$2; echo $tmp; }
div () { let local tmp=$1/$2; echo $tmp; }
mul () { let local tmp=$1*$2; echo $tmp; }
mod () { let local tmp=$1%$2; echo $tmp; }
deg () { let local tmp=$1**$2; echo $tmp; }

while [[ 2 -gt 1 ]]
do
read num1 operand num2

if [[ $num1  == "exit" ]]
then echo "bye"; exit;
fi


case $operand in
"+") sum $num1 $num2;;
"-") sub $num1 $num2;;
"/") div $num1 $num2;;
"*") mul $num1 $num2;;
"%") mod $num1 $num2;;
"**") deg $num1 $num2;;
*) echo "error"; exit;
esac
done
