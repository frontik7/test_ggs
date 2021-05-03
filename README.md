## Basic work with files

- Create directory test1  

mkdir test1

- Create file test1.txt inside the test1 directory.  

touch test1.text

- Create copy of folder test1 with name test2.  

cp -a test1 test2

-  Delete file test1.txt inside test2 directory.  

rm test1.txt

-  Rename test2 folder into directory_without_file  

mv test2 test3

-  Insert 'test1' text into test1/test1.txt file.  

echo "test1" > test1.txt

-  print the text from the test1/test1.txt file.  

cat test1.txt

-  Insert 'test2' into the end of test1/test1.txt file.  

echo "test2" >> test1.txt

-  print the text from the test1/test1.txt file.  

cat test1.txt

## Permissions

Create test directory and block access for all to it.  

```cosnole
chmod 000 test4
chattr +ias test4
```

Try to remove that directory.  

rm: cannot remove 'test4': Operation not permitted  

Create simple script which prints current date. Try to execute it.  

now="$(date)"
echo "current date and time" "$now"

## Log checking

-  Count lines in the file test.txt.  

wc -l test.txt

- Show last 3 lines from the test.txt file.  

tail -n 3 test.txt

-  Hom many uniq IP addresses accessed the website ?  

awk '{print$1}' test.txt | sort | uniq -c | sort -n | wc -l

-  IP address with most requests.  

awk '{print$1}' test.txt | sort | uniq -c | sort -n | tail -n 1

-  Top 3 IP addresses by amount of POST requests.  


-  Which IP addresses received 403 error ?  


- Task with * . Write script to show which pages Google checked from the website  

grep -i google test.txt | awk '{print$7}' | grep .htm
