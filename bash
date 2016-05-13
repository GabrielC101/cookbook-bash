#generate 100 character random string.
length=100 && < /dev/urandom tr -dc [:graph:] | head -c${1:-$length};echo;

#prompt user for length, then generate random string of set length.
echo "Enter length, then hit Enter:" && read length && < /dev/urandom tr -dc [:graph:] | head -c${1:-$length};echo;

#prompt user for length, then generate random string of only alphanumeric characters.
echo "Enter length, then hit Enter:" && read length && < /dev/urandom tr -dc [:alnum:] | head -c${1:-$length};echo;

#lists file contents. monitors file for changes. lists again when file changes. allows you to constantly have latest info from log files.
echo "Enter file path to monitor:" && read file ; cat $file ; new_md5=($(md5sum $file)) ;  while true ; do old_md5=$new_md5; new_md5=($(md5sum $file))   ; if [ $old_md5 != $new_md5 ] ; then clear ; cat $file ; fi ; done
