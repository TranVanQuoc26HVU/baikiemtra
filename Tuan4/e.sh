#!/bin/bash
i=0
while [ $i == 0 ]
do
	echo -e "\n\t----------------------------------------"
	echo -e "\tChuong trinh hien thi thong tin trong tm:"
	echo -e '\t1a. Hien thi chi ten file (khong ke file an)'
	echo -e '\t2b. Hien thi chi ten file va thong tin ve file'
	echo -e '\t3c. Hien thi chi ten file va chi so inode cua file'
	echo -e '\t4d. Hien thi chi ten file kể cả file an'
	echo -e '\t5e. Thoat!'
	echo -e -n '\n\tNhap doi so de hien thi thong tin: '
	read choice
	case $choice in
		1 | 'a')
			echo -e "\nCac file (khong ke file an): "
			echo "`ls`"
			;;
		2 | 'b')
			echo -e "\nCac file va thong tin ve file: "
			echo "`ls -l`"
			;;
		3 | 'c')
			echo -e "\nCac file va chi so inode cua file: "
			echo "`ls -i`"
			;;
		4 | 'd')
			echo -e "\nCac file kể cả file an: "
			echo "`ls -A`"
			;;
		5 | 'e')
			echo -e "\n\t=>Da thoat"
			i=1
			;;
		*) 
			echo -e "\n\t#Vui long chon 1, 2, 3, 4, 5 (hoac a, b, c, d, e)"
	esac
done 