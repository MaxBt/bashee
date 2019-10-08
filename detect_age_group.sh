name=""
age=0
while [[ -z "" ]]
do
echo 'enter your name:'
read name
if [[ $name == "" ]]; then
echo "bye"; exit
fi 
echo "enter your age:"
read age
if [[ $age -eq 0 ]]; then
echo "bye"
exit 
fi

if [[ $age -le 16 ]]; then
echo "$name, your group is child"
elif [[ $age -gt 16 && $age -le 25 ]]; then
echo "$name, your group is youth"
elif [[ $age -gt 25 ]]; then
 echo "$name, your group is adult"
fi
done
