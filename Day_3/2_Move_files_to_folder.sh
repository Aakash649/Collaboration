#2. Move Files from one folder to the respective folder
#!/bin/bash
touch test1.txt test2.txt test3.txt;
echo All text files in Current Directory:- *.txt;
for file in `ls *.txt`;
do
	base_folder_name=`echo $file | awk -F. '{print $1}'`;
	if [ -d $base_folder_name ];
	then
		rm -r $base_folder_name;
	fi
	mkdir $base_folder_name;
	cp $file $base_folder_name;
	echo copying $file to $base_folder_name;
done
