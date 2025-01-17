# recode dental variable
BRFSS_c$DENVST4 <- 9
BRFSS_c$DENVST4[BRFSS_c$X_DENVST3 == 1] <- 0
BRFSS_c$DENVST4[BRFSS_c$X_DENVST3 == 2] <- 1

table(BRFSS_c$X_DENVST3, BRFSS_c$DENVST4)

# make indicator variables
BRFSS_c$NODENVST <- 0
BRFSS_c$NODENVST[BRFSS_c$DENVST4 == 1] <- 1

table(BRFSS_c$DENVST4, BRFSS_c$NODENVST)

# Make diabetes variable
BRFSS_c$DIABETE4 <- 9
BRFSS_c$DIABETE4[BRFSS_c$DIABETE3 > 1 & BRFSS_c$DIABETE3 < 7] <- 0
BRFSS_c$DIABETE4[BRFSS_c$DIABETE3 == 1] <- 1

table(BRFSS_b$DIABETE3, BRFSS_c$DIABETE4)

# make indicator variables
BRFSS_c$NODIABETE <- 0
BRFSS_c$NODIABETE[BRFSS_c$DIABETE4 == 0] <- 1

table(BRFSS_c$DIABETE4, BRFSS_c$NODIABETE)

# recode income variable
BRFSS_c$SMOKER4 <- 9
BRFSS_c$SMOKER4[BRFSS_c$X_SMOKER3 == 4] <- 0
BRFSS_c$SMOKER4[BRFSS_c$X_SMOKER3 == 3] <- 1
BRFSS_c$SMOKER4[BRFSS_c$X_SMOKER3 < 3] <- 2

table(BRFSS_c$X_SMOKER3, BRFSS_c$SMOKER4)

# make indicator variables
BRFSS_c$FRMRSMK <- 0
BRFSS_c$SMOKE <- 0

BRFSS_c$FRMRSMK[BRFSS_c$SMOKER4 == 1] <- 1
BRFSS_c$SMOKE[BRFSS_c$SMOKER4 == 2] <- 1

table(BRFSS_c$SMOKER4, BRFSS_c$FRMRSMK)
table(BRFSS_c$SMOKER4, BRFSS_c$SMOKE)
