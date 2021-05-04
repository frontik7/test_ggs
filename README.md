## Basic work with files

- Create directory test1  

```
mkdir test1
```

- Create file test1.txt inside the test1 directory.  

```
touch test1.txt
```

- Create copy of folder test1 with name test2.  

```
cp -a test1 test2
```

-  Delete file test1.txt inside test2 directory.  

```
rm test1.txt
```

-  Rename test2 folder into directory_without_file  

```
mv test2 test3
```

-  Insert 'test1' text into test1/test1.txt file.  

```
echo "test1" > test1.txt
```

-  print the text from the test1/test1.txt file.  

```
cat test1.txt
```

-  Insert 'test2' into the end of test1/test1.txt file.  

```
echo "test2" >> test1.txt
```

-  print the text from the test1/test1.txt file.  

```
cat test1.txt
```

## Permissions

Create test directory and block access for all to it.  

```
chmod 000 test4
chattr +ias test4
```

Try to remove that directory.  

```
rm: cannot remove 'test4': Operation not permitted  
```

Create simple script which prints current date. Try to execute it.  

Скрипт [тут](https://github.com/frontik7/test_ggs/blob/main/test.sh)

## Log checking

-  Count lines in the file test.txt.  

```
wc -l test.txt
```

- Show last 3 lines from the test.txt file.  

```
tail -n 3 test.txt
```

-  Hom many uniq IP addresses accessed the website ?  

```
awk '{print$1}' test.txt | sort | uniq -c | sort -n | wc -l
```

-  IP address with most requests.  

```
awk '{print$1}' test.txt | sort | uniq -c | sort -n | tail -n 1
```

-  Top 3 IP addresses by amount of POST requests.  

```
grep POST test.txt | awk '{print$1}' | sort | uniq -c | sort -n | tail -n3
```

-  Which IP addresses received 403 error ?  

```
grep ' 403 ' test.txt | awk '{print$1}'
```
- Task with * . Write script to show which pages Google checked from the website  

Скрипт [тут](https://github.com/frontik7/test_ggs/blob/main/script.sh)

## Docker basic 

Create Dockerfile which has following image :

- Starting web server on port 8000
- showing the simple html file on the following link : http://localhost:8000/homework.html
