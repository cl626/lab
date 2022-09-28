.text
    addi x1, x0, 1    #x1=1
    add t1, x0, x0    #store fib series @t1



    addi s0, x0,3
    
    sw s0, 0x408(x0)  #out1=f0	,408:seg=io_dout
    sw s0, 0(t1)      #store f0
    addi t1, t1, 4
    

    addi s1, x0, 5
     
    sw s1, 0x408(x0)  #out1=f1
    sw s1, 0(t1)      #store f1
    addi t1, t1, 4
   

      

next:
    add t0, s0, s1    #fi
    sw t0, 0x408(x0)  #out1=fi
    sw t0, 0(t1)      #store fi
    addi t1, t1, 4

    add s0, x0, s1
    add s1, x0, t0


    jal x0, next       
