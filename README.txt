UNI: fl2312
Name: Fei Liu
HW1
----------------
PLEASE NOTE THIS!!!! The complete description is in the Description.txt file!
I have tested the code in CLIC environment and it works perfectly!
But, it has compiler issue under cunix environment. This is caused by the fact that 
cunix is using a compiler that couldn't handle recursive subclass calling. This is 
a recognized bug of our cunix system. No one is capable of fixing it up to now.
PLEASE test my code under CLIC environment!!! Thank you!

Also, I implemented exit/whoallow/echo three more functions than required. 
Details in below.
----------------
1. All functions implemented and the server side there are log info
2. Testing notes:
        1) login with any name password and type whoelse/wholasthr/braodcast
        2) Note that whoelse shows only other clients. Even if the same usr
           name log in simultaneously at the same time, it doesn't consider
           this extra login another person
        3) I implemented "exit". Just type "exit" when you want to log off.
3. Feel free to ctrl-c at any time. I implemented and tested so that ctrl-c    anytime is fine. The system is error tolerant.
4. I created a lot of sub-class for simplicity reasons and commented extensively 
   to avoid several line code extra java files. If you would like to
   have a clear folder type "make clean"
5. Suggested Testing order:
        1) Type "make". All will compile
        2) Type ifconfig to get the ip address of the PC.
	   Type java Server <portnumber>
	3) Type java Client <ip> <portnumber_above>
	4) User another machine java Client <ip> <port number>
	5) whoelsehr: give one another
	6) who last: gives all logged in successfully in past 1 hour
	7) "broadcast<space><content to be sent>" The space will be trimmed out.
	8) Type "whoallow" and see the list of allowed users and password.
	9) Type "echo" just like broadcast except for that it echoes back only to 
	    This terminal.
	10) Type exit
Thanks. 

If you feel anywhere confused, please contact me at fl2312@columbia.edu.
Best,
Fei Liu
