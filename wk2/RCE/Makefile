.PHONY = all clean

CC = gcc-11
COMPILE_FLAGS = -g -O0 -fno-stack-protector -z execstack -no-pie # -m32
	# -g: default level of debug information
	# -O0: do not optimise (Optimisation level 0)
	# -fno-stack-protector: disable stack protectors (canaries(?))
	# -no-pie: disable position independent execution - disables relative paths for addresses
	# -m32: compile as a 32 bit program
	# -z execstack: allow stack execution

all: 7_RCE
apple: 7_RCE_apple


7_RCE:
	${CC} ${COMPILE_FLAGS} -o ./challenge2 RCE.c


7_RCE_apple:
	${CC} ${COMPILE_FLAGS} -o ./challenge2 RCE.c


clean:
	rm -rf ./challenge2 ./challenge2.dSYM
