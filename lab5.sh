yes="y"
while [ "$yes" = "y" ]; do
	clear
	tasklist | sort -r -k 5 | head -n13
	echo 
	echo -n "Введите ID процесса, который необходимо принудительно завершить: "
	read id
	taskkill -f -pid $id
	tasklist | sort -r -k 5 | head -n13
	echo
	echo -n "Продолжить принудительное завершение процессов? (y/n)"
	read yes
	echo
done

