.data
str: .asciiz "Hello, World\n"

.text
# Print out the string "Hello, World" in this segment
li $v0, 4     # Load the argument value to print a string
la $a0, str # store the string in the a0 register
syscall      #call the kernal services to print "Hello World"

# Read a character 
li $v0, 12 #load the argument for reading a character
syscall # read a character from the user
move $t0, $v0 # move the result of the character to t0

li $v0, 10
syscall
