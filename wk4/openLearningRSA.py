START = 65 - 1
NUM_ALPHABET = 26 - 1


# def encrypt_char(s: str, e: int, N: int) -> str:

#     cipherText = ""
#     cipherTextNum = ""
#     for x in s:
#         res = (((ord(x) - START) ** e) % N) % NUM_ALPHABET
#         cipherTextNum += f"{res:02d}"
#         char = chr(res + START)
#         cipherText += char
#     print(cipherTextNum)
#     return cipherText
# print(encrypt_char("RSA", 7825, 467323))
#


def encryptAsNum(s: str, e: int, N: int) -> int:
    cipherTextNum = ""
    for x in s:
        cipherTextNum += f"{(ord(x) - START):02d}"
    # print(cipherTextNum)
    val = int(cipherTextNum, 10)
    print(f"Before encryption: {val:02d}")
    encrypted_val = (val**e) % N
    return encrypted_val


ans = encryptAsNum("RSA", 7825, 467323)
print(f"After encrytion: {ans:02d}")
