@1
D=M+1
M=D
//Incremented

//Loop1
@50
D=A
@3
M=D

(L2)

//Loop2
@49996
D=A
@10
D=D-1
D,JGT

@3
D=M-1
M=D
@L2
D,JGT

//Loopback
@0
0,JMP