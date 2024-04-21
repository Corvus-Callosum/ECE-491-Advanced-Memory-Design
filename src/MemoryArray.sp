**** Final Project - ECE 491 - Sean George ****

**** Libraries ****
.lib './PTM-MG/models' ptm20hp

**** Options ****
.option post=1
.option probe=0
.option runlvl=6
.option ingold=2
.option accurate=1
.option method=bdf
.option measfile=1
.option lis_new=1
.option measform=3
.option CO=132
.OPTION MONTECON=1
.save

**** Parameters ****
.param No_of_Fins=2
.param MIM_CAP=1f
.param VDD=0.9

**** SRAM Cell ****

**** XN nd  ng  ns  nb  nfet    nfin='No_of_Fins' 

.SUBCKT sram_6t WL BL BLbar ndd No_of_Fins='2' MIM_CAP='1f'
    * Inverter 1
    Xm1 Q    Qbar       ndd     ndd     pfet nfin='No_of_Fins' 
    Xm2 Q    Qbar       0       0       nfet nfin='No_of_Fins' 
    * Inverter 2
    Xm3 Qbar    Q       ndd     ndd     pfet nfin='No_of_Fins' 
    Xm4 Qbar    Q       0       0       nfet nfin='No_of_Fins'
    * Access Transistors
    Xm5 Q           WL      BL      0       nfet nfin='No_of_Fins'
    Xm6 Qbar        WL      BLbar   0       nfet nfin='No_of_Fins'
    * Output Capacitance
    C1  Q       0       MIM_CAP
    C2  Qbar    0       MIM_CAP
.ENDS

**** Memory Array ****
Xsram[0]    WL0     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[1]    WL0     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[2]    WL0     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[3]    WL0     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[4]    WL0     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[5]    WL0     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[6]    WL0     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[7]    WL0     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[8]    WL0     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[9]    WL0     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[10]   WL0     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[11]   WL0     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[12]   WL0     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[13]   WL0     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[14]   WL0     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[15]   WL0     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[16]   WL1     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[17]   WL1     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[18]   WL1     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[19]   WL1     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[20]   WL1     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[21]   WL1     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[22]   WL1     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[23]   WL1     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[24]   WL1     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[25]   WL1     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[26]   WL1     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[27]   WL1     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[28]   WL1     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[29]   WL1     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[30]   WL1     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[31]   WL1     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[32]   WL2     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[33]   WL2     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[34]   WL2     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[35]   WL2     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[36]   WL2     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[37]   WL2     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[38]   WL2     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[39]   WL2     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[40]   WL2     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[41]   WL2     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[42]   WL2     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[43]   WL2     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[44]   WL2     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[45]   WL2     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[46]   WL2     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[47]   WL2     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[48]   WL3     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[49]   WL3     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[50]   WL3     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[51]   WL3     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[52]   WL3     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[53]   WL3     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[54]   WL3     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[55]   WL3     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[56]   WL3     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[57]   WL3     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[58]   WL3     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[59]   WL3     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[60]   WL3     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[61]   WL3     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[62]   WL3     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[63]   WL3     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[64]   WL4     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[65]   WL4     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[66]   WL4     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[67]   WL4     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[68]   WL4     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[69]   WL4     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[70]   WL4     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[71]   WL4     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[72]   WL4     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[73]   WL4     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[74]   WL4     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[75]   WL4     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[76]   WL4     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[77]   WL4     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[78]   WL4     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[79]   WL4     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[80]   WL5     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[81]   WL5     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[82]   WL5     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[83]   WL5     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[84]   WL5     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[85]   WL5     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[86]   WL5     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[87]   WL5     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[88]   WL5     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[89]   WL5     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[90]   WL5     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[91]   WL5     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[92]   WL5     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[93]   WL5     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[94]   WL5     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[95]   WL5     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[96]   WL6     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[97]   WL6     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[98]   WL6     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[99]   WL6     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[100]  WL6     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[101]  WL6     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[102]  WL6     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[103]  WL6     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[104]  WL6     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[105]  WL6     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[106]  WL6     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[107]  WL6     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[108]  WL6     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[109]  WL6     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[110]  WL6     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[111]  WL6     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[112]  WL7     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[113]  WL7     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[114]  WL7     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[115]  WL7     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[116]  WL7     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[117]  WL7     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[118]  WL7     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[119]  WL7     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[120]  WL7     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[121]  WL7     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[122]  WL7     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[123]  WL7     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[124]  WL7     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[125]  WL7     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[126]  WL7     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[127]  WL7     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[128]  WL8     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[129]  WL8     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[130]  WL8     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[131]  WL8     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[132]  WL8     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[133]  WL8     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[134]  WL8     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[135]  WL8     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[136]  WL8     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[137]  WL8     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[138]  WL8     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[139]  WL8     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[140]  WL8     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[141]  WL8     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[142]  WL8     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[143]  WL8     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[144]  WL9     BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[145]  WL9     BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[146]  WL9     BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[147]  WL9     BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[148]  WL9     BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[149]  WL9     BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[150]  WL9     BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[151]  WL9     BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[152]  WL9     BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[153]  WL9     BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[154]  WL9     BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[155]  WL9     BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[156]  WL9     BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[157]  WL9     BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[158]  WL9     BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[159]  WL9     BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[160]  WL10    BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[161]  WL10    BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[162]  WL10    BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[163]  WL10    BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[164]  WL10    BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[165]  WL10    BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[166]  WL10    BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[167]  WL10    BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[168]  WL10    BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[169]  WL10    BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[170]  WL10    BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[171]  WL10    BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[172]  WL10    BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[173]  WL10    BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[174]  WL10    BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[175]  WL10    BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[176]  WL11    BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[177]  WL11    BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[178]  WL11    BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[179]  WL11    BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[180]  WL11    BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[181]  WL11    BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[182]  WL11    BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[183]  WL11    BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[184]  WL11    BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[185]  WL11    BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[186]  WL11    BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[187]  WL11    BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[188]  WL11    BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[189]  WL11    BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[190]  WL11    BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[191]  WL11    BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[192]  WL12    BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[193]  WL12    BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[194]  WL12    BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[195]  WL12    BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[196]  WL12    BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[197]  WL12    BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[198]  WL12    BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[199]  WL12    BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[200]  WL12    BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[201]  WL12    BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[202]  WL12    BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[203]  WL12    BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[204]  WL12    BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[205]  WL12    BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[206]  WL12    BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[207]  WL12    BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[208]  WL13    BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[209]  WL13    BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[210]  WL13    BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[211]  WL13    BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[212]  WL13    BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[213]  WL13    BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[214]  WL13    BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[215]  WL13    BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[216]  WL13    BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[217]  WL13    BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[218]  WL13    BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[219]  WL13    BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[220]  WL13    BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[221]  WL13    BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[222]  WL13    BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[223]  WL13    BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[224]  WL14    BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[225]  WL14    BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[226]  WL14    BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[227]  WL14    BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[228]  WL14    BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[229]  WL14    BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[230]  WL14    BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[231]  WL14    BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[232]  WL14    BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[233]  WL14    BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[234]  WL14    BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[235]  WL14    BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[236]  WL14    BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[237]  WL14    BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[238]  WL14    BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[239]  WL14    BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[240]  WL15    BL[0]   BLB[0]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[241]  WL15    BL[1]   BLB[1]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[242]  WL15    BL[2]   BLB[2]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[243]  WL15    BL[3]   BLB[3]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[244]  WL15    BL[4]   BLB[4]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[245]  WL15    BL[5]   BLB[5]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[246]  WL15    BL[6]   BLB[6]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[247]  WL15    BL[7]   BLB[7]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[248]  WL15    BL[8]   BLB[8]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[249]  WL15    BL[9]   BLB[9]      Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[250]  WL15    BL[10]  BLB[10]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[251]  WL15    BL[11]  BLB[11]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[252]  WL15    BL[12]  BLB[12]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[253]  WL15    BL[13]  BLB[13]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[254]  WL15    BL[14]  BLB[14]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'
Xsram[255]  WL15    BL[15]  BLB[15]     Vndd_in sram_6t No_of_Fins='No_of_Fins' MIM_CAP='MIM_CAP'

**** Voltage Sources ****
Vndd    Vndd_in     0   'VDD'

**** Bit/Word Lines ****
* PULSE(V0 V2 Tdelay Trise Tfall Tactive Tperiod)

* Wordline
Vnwl    WL1     0   PULSE(0 0.9 1n 100p 100p 2n 5n)
* Bitline
Vnbl    D       0   PULSE(0 0.9 0 100p 100p 10n 20n)
* Bitline Bar
Vnblb   Dbar    0   PULSE(0.9 0 0 2p 2p 10n 20n)


**** READ/WRITE ****

Xmbl    D       write   BL[2]   0   nfet nfin='No_of_Fins'
Xmblb   Dbar    write   BLB[2]  0   nfet nfin='No_of_Fins'
Xmpcbl  Vndd_in Vnpc    BL[2]   0   pfet nfin='No_of_Fins'
Xmpcblb Vndd_in Vnpc    BLB[2]  0   pfet nfin='No_of_Fins'

Vwrite  write   0   PULSE(0 0.9 1n 100p 100p 2n 10n)
* Vread   read    0   PULSE(0 0.9 1n 100p 100p 2n 10n)

**** Pre-Charge ****
Vpc     Vnpc    0   PULSE(0.9 0 3n 100p 100p 1n 10n)



**** Simulation****
.param stop=50n
.param step=1p

.tran step stop 

.probe Vx(Xsram[18]:Q)
