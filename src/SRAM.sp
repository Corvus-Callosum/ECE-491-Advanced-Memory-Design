**** SRAM Subcircuit **** 

.SUBCKT sram_6t WL BL BLbar ndd
    * Inverter 1
    Xm1 Q    Qbar       ndd     ndd     pfet nfin='No_of_Fins' 
    Xm2 Q    Qbar       0       0       nfet nfin='No_of_Fins' 
    * Inverter 2
    Xm3 Qbar    Q       ndd     ndd     pfet nfin='No_of_Fins' 
    Xm4 Qbar    Q       0       0       nfet nfin='No_of_Fins'
    * Access Transistors
    Xm5 Q       WL      BL      0       nfet nfin='No_of_Fins'
    Xm6 Qbar    WL      BLbar   0       nfet nfin='No_of_Fins'
    * Output Capacitance
    C1  Q       0       MIM_CAP
    C2  Qbar    0       MIM_CAP
.ENDS
