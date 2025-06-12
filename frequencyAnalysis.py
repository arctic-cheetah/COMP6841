def main(s: str):
    myHt = {}
    numChars = 0
    for x in s:
        if str.isalpha(x):
            numChars += 1
            if myHt.get(x) == None:
                myHt[x] = 0
            else:
                myHt[x] = myHt.get(x) + 1
    res = sorted(myHt.items(), key=lambda x: x[1], reverse=True)
    freq = list(map(lambda x: (x[0], x[1] / numChars), res))
    print(freq)
    with open("file.csv", "w+") as f:
        f.write("Letter, freq, matched_letter,\n")
        for x in freq:
            f.write(f"{x[0]}, {str(x[1] * 100)},,\n")


main(
    "VY XZRG OZUYMQVGX, OEFUOGQ FYA AFYMG FQGMEG OJFXXVOX VY MEVX OZUYMON, VM'X F XZTM AQVYH."
)
















# main(
#     """ZRTFT IH PQFTHZ IQ ZRT XBGBOZIO HTQBZT. HTWTFBG ZRLPHBQV HLGBF HYHZTSH RBWT VTOGBFTV ZRTIF IQZTQZILQH ZL
# GTBWT ZRT FTEPKGIO. ZRIH HTEBFBZIHZ SLWTSTQZ, PQVTF
# ZRT GTBVTFHRIE LD ZRT SYHZTFILPH OLPQZ VLLAP, RBH SBVT
# IZ VIDDIOPGZ DLF ZRT GISIZTV QPSKTF LD CTVI AQIXRZH
# ZL SBIQZBIQ ETBOT BQV LFVTF IQ ZRT XBGBJY. HTQBZLF
# BSIVBGB, ZRT DLFSTF NPTTQ LD QBKLL, IH FTZPFQIQX ZL
# ZRT XBGBOZIO HTQBZT ZL WLZT LQ ZRT OFIZIOBG IHHPT LD
# OFTBZIQX BQ BFSY LD ZRT FTEPKGIO ZL BHHIHZ ZRT LWTFMRTGSTV CTVI""".upper()
# )
