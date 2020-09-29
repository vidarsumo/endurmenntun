# Gagnavísindi með R - Endurmenntun Háskóla Íslands - Tími 1
# Í fyrsta tíma fáum við tilfinningu fyrir RStudio og virkni R
# Hlöðum engum pökkum inn í fyrsta tíma.


# 1.0 ÚTreikningar ----

# R er sérhannað til að vinna með gögn og framkvæma útreikninga.

# Til að keyra útreikninga er hægt að fara nokkrar mismunandi leiðir
# 1) Staðsetja bendil í viðkomandi línu(r) og velja Ctrl + enter / Cmd + enter
# 2) Ljóma kóðann -> copy -> paste í console

1 + 5

4 / 2

5 * 10


# Hér gilda hefðbundnar reglur um forgangsröðun útreikninga þegar
# bæði er unnið með plús/mínus og margföldun/deilingu.

# Hver er útkoman hér?
2 + 2 * 4

5 / 5 + 1



# 2.0 Breytur ----

# Breytur (e. variables) geyma safn upplýsingar sem hægt er að nota hvenær
# sem er í kóðanum. T.d. ef framkvæma á fimm mismunandi útreikninga þar sem
# í öll skiptin er unnið með ártal stærra en 1980. Í stað þess að slá inn
# ártalið fimm sinnum er best að búa það til einusinni og vitna svo alltaf
# breytuna sem geymir ártalið. Komum inn á þetta á eftir.

ar_nota_1 <- 1980

ar_nota_2 <- 1980:2010

ar_nota_3 <- seq(from = 1980, to = 2020, by = 2)

ar_nota_4 <- seq(from = 1980, length.out = 10, by = 3)

# Hendum breytu með rm() fallinu

rm(ar_nota_4)
ar_nota_4


# 3.0 Gagnategundir ----

