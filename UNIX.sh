# 1. Write a command (pipeline), which removes HTML tags from a text file

sed -i -e 's/<[^>]*>//g ; /^$/d' filename.txt

# 2. Write a command (pipeline) that would split the text file into blocks consisting of 60-75 characters (do not divide words)!

sed -E -i 's/(.{60,75}[^ ]*) /\1\n/g' filename.txt

# 3. Use the above commands to write a script, whose input would be a (possibly HTML) text file, and would output the text formatted as in 2.

sed -i -E 's/<[^>]*>//g ; /^$/d ; s/(.{60,75}[^ ]*) /\1\n/g' filename.txt
