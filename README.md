# windows_terminal_string_cutting
A program that cuts a string after a specific amount of characters in windows terminal

# Installation/Download:
There are two ways:
## 1 Cloning
You can clone the repository with git on your machine

## 2 Copy Paste
You can copy the content of the cutter.cmd and paste it in a text file.
Save this text file as either .cmd or .bat file.

# Usage:
Open a cmd window and cd to the location where you saved the file (For example: C:\Users\User1\ ).  
Inside the folder run <br>```cmd /c cutter.cmd``` <br >or <br>```cmd /c cutter.bat```<br>
to start the program.
There are 3 flags to use:
- ```-f``` : Cut the string on fixed points, starting at 6 and going up in steps of 2 up to 22
- ```-c``` : Cut the string on a custom point
- ```-h``` : Help inside the terminal

Example: ```cmd /c cutter.cmd -f```  to run the fixed length program.

# Note
You can change the values for the fixed length program.  
In the code is a command that shows you the location and explains it.  
It refers to this line:  
```for /l %%i in (6, 2, 22) do (```   
The 3 values in the round brackets stand for (in order):
- the start value (in this case 6)
- the size of the steps (in this case 2)
- the maximum value (in this case 22)  
  
You can just change this values as you like!
