.PHONY = all clean

CC = gcc-11
COMPILE_FLAGS = -g -O0 -fno-stack-protector -no-pie -static # -m32
	# -g: default level of debug information
	# -O0: do not optimise (Optimisation level 0)
	# -fno-stack-protector: disable stack protectors (canaries(?))
	# -no-pie: disable position independent execution - disables relative paths for addresses
	# -m32: compile as a 32 bit program
	# -static: statically compile libc into the binary

all: 8_system
apple: 8_system_apple


8_system:
	${CC} ${COMPILE_FLAGS} -o ./challenge2 system.c


8_system_apple:
	${CC} ${COMPILE_FLAGS} -o ./challenge2 system.c


clean:
	rm -rf ./challenge2 ./challenge2.dSYM
