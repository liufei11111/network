UNI: fl2312
Name: Fei Liu
HW1
----------------
PLEASE NOTE THIS!!!! The description of the project is in the Description.txt file.
I have tested the code in Ubuntu(12.04)environment and it works perfectly!

Also, I implemented exit/whoallow/echo three more functions than those required. 
Details in below.
----------------
1. All functions(in the homework requirement)are implemented.

2. Feel free to ctrl-c at any time. I implemented and tested so that ctrl-c    anytime is fine. The system is error tolerant.

3. Suggested Testing order:
        1) Type "make". All will compile. If the system is using old java compiler, 
		please use a standard Ubuntu system higher than 12.04.
        2) Type ifconfig to get the ip address of the PC and copy.
	   Type java Server <portnumber>
Open another terminal in another machine or the same machine and goes to the same folder:
	3) Type "java Client <ip_of_server> <portnumber_above>"
	(Note that ip_of_server is "localhost" if you test it on the same machine. )
	4) A user/password list is stored in UserList.txt. Two handy ones are 
		User Name: Columbia, Password: 116bway
		User Name: SEAS, Password: summerisover
Below are functions implemented:
On the client side, try:
	6) wholast: gives all users logged in successfully in past 1 hour
	7) "broadcast<space><content to be sent>" The space will be trimmed out.
	8) Type "whoallow" and see the list of allowed users and password.
	9) Type "echo" just like broadcast except for that it echoes back only to 
	    This terminal.
	10) Type "whoelse": gives the current active users.
	11) Type exit
Thanks. 

If you feel anywhere confused, please contact me at fl2312@columbia.edu.
Best,
Fei Liu
