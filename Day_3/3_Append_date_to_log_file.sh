#3. Append current date to log files which has extension .log.1 from a folder
#!/bin/bash
touch test1.log.1 test2.log.1 test3.log.1;
echo All files to rename in current directory:- *.log.1;
for file in `ls *.log.1`;
do
	segregated_file_name=`echo $file | awk -F. '{print $1}'`;
	date_format=`date +"%Y_%m_%d"`;
	new_file_name="${segregated_file_name}_${date_format}.log";
	echo renaming $file to $new_file_name;
done
