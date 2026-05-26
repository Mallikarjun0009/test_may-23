NUMBER1=$1
NUMBER2=$2

sum=$((NUMBER1+NUMBER2))

echo "Total: $sum"

echo "how many arugments passed: $#"
echo "Total aurgument passed and show me the values: $@"
echo "Script name: $0"