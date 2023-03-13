#! /bin/bash

echo -e "Input name of file : \c"
read file_name

if [ -f $file_name ]
then
    if [ -w $file_name ]
    then
        echo "Input some text to the file, press ctrl+c to quit"
        cat >> $file_name
    else
        echo "You do not have the right permission for this file"
    fi
else
    touch $file_name
    echo "File not found"
    echo "Created a new file successfully!"
fi
