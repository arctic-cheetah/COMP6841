.PHONY = all clean

CC = gcc-11
COMPILE_FLAGS = -g -O0 -fno-stack-protector -no-pie # -m32
	# -g: default level of debug information
	# -O0: do not optimise (Optimisation level 0)
	# -fno-stack-protector: disable stack protectors (canaries(?))
	# -no-pie: disable position independent execution - disables relative paths for addresses
	# -m32: compile as a 32 bit program

all: 5_jumpAgain
apple: 5_jumpAgain_apple


5_jumpAgain:
	${CC} ${COMPILE_FLAGS} -m32 -o ./challenge jumpAgain.c


5_jumpAgain_apple:
	${CC} ${COMPILE_FLAGS} -o ./challenge jumpAgain.c


clean:
	rm -rf ./challenge ./challenge.dSYM
