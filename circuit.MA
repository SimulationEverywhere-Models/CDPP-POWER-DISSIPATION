[top]
components : circ powerCalc 
components : buf1@Buffer buf2@Buffer buf3@Buffer buf4@Buffer buf5@Buffer buf6@Buffer 
components : buf7@Buffer buf8@Buffer buf9@Buffer buf10@Buffer buf11@Buffer buf12@Buffer buf13@Buffer
components : buf14@Buffer buf15@Buffer buf16@Buffer buf17@Buffer buf18@Buffer buf19@Buffer buf20@Buffer
components : buf21@Buffer buf22@Buffer buf23@Buffer buf24@Buffer buf25@Buffer buf26@Buffer buf27@Buffer
components : buf28@Buffer buf29@Buffer buf30@Buffer buf31@Buffer buf32@Buffer buf33@Buffer buf34@Buffer
components : buf35@Buffer buf36@Buffer

in : dataIn1 dataIn2 dataIn3 dataIn4 dataIn5 dataIn6
link : dataIn1 dataIn1@circ
link : dataIn2 dataIn2@circ
link : dataIn3 dataIn3@circ
link : dataIn4 dataIn4@circ
link : dataIn5 dataIn5@circ
link : dataIn6 dataIn6@circ

link : out1@circ in@buf1
link : out@buf1 in1@powerCalc
link : out2@circ in@buf2
link : out@buf2 in2@powerCalc
link : out3@circ in@buf3
link : out@buf3 in3@powerCalc
link : out4@circ in@buf4
link : out@buf4 in4@powerCalc
link : out5@circ in@buf5
link : out@buf5 in5@powerCalc
link : out6@circ in@buf6
link : out@buf6 in6@powerCalc
link : out7@circ in@buf7
link : out@buf7 in7@powerCalc
link : out8@circ in@buf8
link : out@buf8 in8@powerCalc
link : out9@circ in@buf9
link : out@buf9 in9@powerCalc
link : out10@circ in@buf10
link : out@buf10 in10@powerCalc
link : out11@circ in@buf11
link : out@buf11 in11@powerCalc
link : out12@circ in@buf12
link : out@buf12 in12@powerCalc
link : out13@circ in@buf13
link : out@buf13 in13@powerCalc
link : out14@circ in@buf14
link : out@buf14 in14@powerCalc
link : out15@circ in@buf15
link : out@buf15 in15@powerCalc
link : out16@circ in@buf16
link : out@buf16 in16@powerCalc
link : out17@circ in@buf17
link : out@buf17 in17@powerCalc
link : out18@circ in@buf18
link : out@buf18 in18@powerCalc
link : out19@circ in@buf19
link : out@buf19 in19@powerCalc
link : out20@circ in@buf20
link : out@buf20 in20@powerCalc
link : out21@circ in@buf21
link : out@buf21 in21@powerCalc
link : out22@circ in@buf22
link : out@buf22 in22@powerCalc
link : out23@circ in@buf23
link : out@buf23 in23@powerCalc
link : out24@circ in@buf24
link : out@buf24 in24@powerCalc
link : out25@circ in@buf25
link : out@buf25 in25@powerCalc
link : out26@circ in@buf26
link : out@buf26 in26@powerCalc
link : out27@circ in@buf27
link : out@buf27 in27@powerCalc
link : out28@circ in@buf28
link : out@buf28 in28@powerCalc
link : out29@circ in@buf29
link : out@buf29 in29@powerCalc
link : out30@circ in@buf30
link : out@buf30 in30@powerCalc
link : out31@circ in@buf31
link : out@buf31 in31@powerCalc
link : out32@circ in@buf32
link : out@buf32 in32@powerCalc
link : out33@circ in@buf33
link : out@buf33 in33@powerCalc
link : out34@circ in@buf34
link : out@buf34 in34@powerCalc
link : out35@circ in@buf35
link : out@buf35 in35@powerCalc
link : out36@circ in@buf36
link : out@buf36 in36@powerCalc


[circ]
type : cell
dim : (6,6,3)
in : dataIn1 dataIn2 dataIn3 dataIn4 dataIn5 dataIn6
out : out1 out2 out3 out4 out5 out6 out7 out8 out9
out : out10 out11 out12 out13 out14 out15 out16 out17 out18
out : out19 out20 out21 out22 out23 out24 out25 out26 out27
out : out28 out29 out30 out31 out32 out33 out34 out35 out36

border : nowrapped
delay : inertial
defaultDelayTime  : 100
initialvalue : 0
InitialCellsValue : circuit.VAL
localtransition : circuit-rules

neighbors : circ(-1,-1,0) circ(-1,0,0) circ(-1,1,0) 
neighbors : circ(0,-1,0) circ(0,0,0) circ(0,1,0) 
neighbors : circ(1,-1,0) circ(1,0,0) circ(1,1,0) 
neighbors : circ(0,0,-1) 
neighbors : circ(-1,-1,1) circ(-1,0,1) circ(-1,1,1) 
neighbors : circ(0,-1,1) circ(0,0,1) circ(0,1,1) 
neighbors : circ(1,-1,1) circ(1,0,1) circ(1,1,1) 

link : dataIn1 input@circ(0,0,1) 
link : dataIn2 input@circ(1,0,1)
link : dataIn3 input@circ(2,0,1) 
link : dataIn4 input@circ(3,0,1) 
link : dataIn5 input@circ(4,0,1) 
link : dataIn6 input@circ(5,0,1) 

link : output@circ(0,0,1) out1
link : output@circ(0,1,1) out2
link : output@circ(0,2,1) out3
link : output@circ(0,3,1) out4
link : output@circ(0,4,1) out5
link : output@circ(0,5,1) out6
link : output@circ(1,0,1) out7
link : output@circ(1,1,1) out8
link : output@circ(1,2,1) out9
link : output@circ(1,3,1) out10
link : output@circ(1,4,1) out11
link : output@circ(1,5,1) out12
link : output@circ(2,0,1) out13
link : output@circ(2,1,1) out14
link : output@circ(2,2,1) out15
link : output@circ(2,3,1) out16
link : output@circ(2,4,1) out17
link : output@circ(2,5,1) out18
link : output@circ(3,0,1) out19
link : output@circ(3,1,1) out20
link : output@circ(3,2,1) out21
link : output@circ(3,3,1) out22
link : output@circ(3,4,1) out23
link : output@circ(3,5,1) out24
link : output@circ(4,0,1) out25
link : output@circ(4,1,1) out26
link : output@circ(4,2,1) out27
link : output@circ(4,3,1) out28
link : output@circ(4,4,1) out29
link : output@circ(4,5,1) out30
link : output@circ(5,0,1) out31
link : output@circ(5,1,1) out32
link : output@circ(5,2,1) out33
link : output@circ(5,3,1) out34
link : output@circ(5,4,1) out35
link : output@circ(5,5,1) out36

zone : connect-rules { (0,0,0)..(5,5,0) }
zone : output-rules { (0,0,1)..(5,5,1) }
zone : memory-rules { (0,0,2)..(5,5,2) }

portInTransition : input@circ(0,0,1) input-rules
portInTransition : input@circ(1,0,1) input-rules
portInTransition : input@circ(2,0,1) input-rules
portInTransition : input@circ(3,0,1) input-rules
portInTransition : input@circ(4,0,1) input-rules
portInTransition : input@circ(5,0,1) input-rules

[connect-rules]
rule : { (0,0,0) } 100 {t}

[input-rules]
rule : { portValue(thisPort) } 1 {t}

[output-rules]
% WIRE Rules
% direction UP
rule : { (1,0,0) } 4 { (0,0,-1) = 10 }
% direction DOWN
rule : { (-1,0,0) } 4 { (0,0,-1) = 14 }
% direction RIGHT
rule : { (0,-1,0) } 4 { (0,0,-1) = 12 }
% direction UP RIGHT
rule : { (1,-1,0) } 4 { (0,0,-1) = 11 }
% direction DOWN RIGHT
rule : { (-1,-1,0) } 4 { (0,0,-1) = 13 }

% NOT rules --> 2
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 2 and (0,-1,0) = 1 and (0,0,0) = 1}
rule : { 0                  } 4 { (0,0,-1) = 2 and (0,-1,0) = 1 and (0,0,0) = 0}
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 2 and (0,-1,0) = 0 and (0,0,0) = 0}
rule : { 1                  } 4 { (0,0,-1) = 2 and (0,-1,0) = 0 and (0,0,0) = 1}

% AND Rules --> value = 3
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 1 and (0,-1,0) = 1 and (0,0,0) = 0 }
rule : { 1                  } 4 { (0,0,-1) = 3 and (-1,-1,0) = 1 and (0,-1,0) = 1 and (0,0,0) = 1 }
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 1 and (0,-1,0) = 0 and (0,0,0) = 1 }
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 0 and (0,-1,0) = 1 and (0,0,0) = 1 }
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 0 and (0,-1,0) = 0 and (0,0,0) = 1 }
rule : { 0                  } 4 { (0,0,-1) = 3 and (-1,-1,0) = 0 and (0,-1,0) = 0 and (0,0,0) = 0 and (-1,-1,1) = 0 and (0,-1,1) = 0} 
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 0 and (0,-1,0) = 0 and (0,0,0) = 0 and (-1,-1,1) = 1 and (0,-1,1) = 0} 
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 0 and (0,-1,0) = 0 and (0,0,0) = 0 and (-1,-1,1) = 0 and (0,-1,1) = 1}
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 1 and (0,-1,0) = 0 and (0,0,0) = 0 and (-1,-1,1) = 0 and (0,-1,1) = 0}
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 1 and (0,-1,0) = 0 and (0,0,0) = 0 and (-1,-1,1) = 0 and (0,-1,1) = 1}
rule : { 0                  } 4 { (0,0,-1) = 3 and (-1,-1,0) = 1 and (0,-1,0) = 0 and (0,0,0) = 0 and (-1,-1,1) = 1 and (0,-1,1) = 0}
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 0 and (0,-1,0) = 1 and (0,0,0) = 0 and (-1,-1,1) = 0 and (0,-1,1) = 0}
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 3 and (-1,-1,0) = 0 and (0,-1,0) = 1 and (0,0,0) = 0 and (-1,-1,1) = 1 and (0,-1,1) = 0}
rule : { 0                  } 4 { (0,0,-1) = 3 and (-1,-1,0) = 0 and (0,-1,0) = 1 and (0,0,0) = 0 and (-1,-1,1) = 0 and (0,-1,1) = 1}

% OR Rules - Value = 5
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 1 and (0,-1,0) = 1 and (0,0,0) = 0 }
rule : { 0 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 0 and (0,-1,0) = 0 and (0,0,0) = 1 }
rule : { 0                  } 4 { (0,0,-1) = 5 and (-1,-1,0) = 0 and (0,-1,0) = 0 and (0,0,0) = 0 and (-1,-1,1) = 0 and (0,-1,1) = 0} 
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 1 and (0,-1,0) = 0 and (0,0,0) = 0 and (-1,-1,1) = 0 and (0,-1,1) = 0}
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 0 and (0,-1,0) = 1 and (0,0,0) = 0 and (-1,-1,1) = 0 and (0,-1,1) = 0}
rule : { 1                  } 4 { (0,0,-1) = 5 and (-1,-1,0) = 1 and (0,-1,0) = 1 and (0,0,0) = 1 and (-1,-1,1) = 1 and (0,-1,1) = 1 }  
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 1 and (0,-1,0) = 1 and (0,0,0) = 1 and (-1,-1,1) = 0 and (0,-1,1) = 1 }  
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 1 and (0,-1,0) = 1 and (0,0,0) = 1 and (-1,-1,1) = 1 and (0,-1,1) = 0 }  
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 1 and (0,-1,0) = 0 and (0,0,0) = 1 and (-1,-1,1) = 1 and (0,-1,1) = 1 }  
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 1 and (0,-1,0) = 0 and (0,0,0) = 1 and (-1,-1,1) = 0 and (0,-1,1) = 1 }  
rule : { 1                  } 4 { (0,0,-1) = 5 and (-1,-1,0) = 1 and (0,-1,0) = 0 and (0,0,0) = 1 and (-1,-1,1) = 1 and (0,-1,1) = 0 }  
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 0 and (0,-1,0) = 1 and (0,0,0) = 1 and (-1,-1,1) = 1 and (0,-1,1) = 1 }  
rule : { 1 + send(output,1) } 4 { (0,0,-1) = 5 and (-1,-1,0) = 0 and (0,-1,0) = 1 and (0,0,0) = 1 and (-1,-1,1) = 1 and (0,-1,1) = 0 }  
rule : { 1                  } 4 { (0,0,-1) = 5 and (-1,-1,0) = 0 and (0,-1,0) = 1 and (0,0,0) = 1 and (-1,-1,1) = 0 and (0,-1,1) = 1 }  

% Default rule
rule : { (0,0,0) } 99 {t}


[memory-rules]
rule : { (0,0,-1) } 7 {t}

[circuit-rules]
rule : { (0,0,0) } 100 { t }


[powerCalc]
type : cell
width : 7
height : 7
delay : transport
defaultDelayTime : 100
border : wrapped
neighbors : powerCalc(-3,-3) powerCalc(-3,-2) powerCalc(-3,-1) powerCalc(-3,0) powerCalc(-3,1) powerCalc(-3,2) powerCalc(-3,3)
neighbors : powerCalc(-2,-3) powerCalc(-2,-2) powerCalc(-2,-1) powerCalc(-2,0) powerCalc(-2,1) powerCalc(-2,2) powerCalc(-2,3)
neighbors : powerCalc(-1,-3) powerCalc(-1,-2) powerCalc(-1,-1) powerCalc(-1,0) powerCalc(-1,1) powerCalc(-1,2) powerCalc(-1,3)
neighbors : powerCalc(-0,-3) powerCalc(0,-2) powerCalc(0,-1) powerCalc(0,0) powerCalc(0,1) powerCalc(0,2) powerCalc(0,3)
neighbors : powerCalc(1,-3) powerCalc(1,-2) powerCalc(1,-1) powerCalc(1,0) powerCalc(1,1) powerCalc(1,2) powerCalc(1,3)
neighbors : powerCalc(2,-3) powerCalc(2,-2) powerCalc(2,-1) powerCalc(2,0) powerCalc(2,1) powerCalc(2,2) powerCalc(2,3)
neighbors : powerCalc(3,-3) powerCalc(3,-2) powerCalc(3,-1) powerCalc(3,0) powerCalc(3,1) powerCalc(3,2) powerCalc(3,3)

localtransition : calculation-rules


initialvalue : 0
in : in1 in2 in3 in4 in5 in6 in7 in8 in9
in : in10 in11 in12 in13 in14 in15 in16 in17 in18
in : in19 in20 in21 in22 in23 in24 in25 in26 in27
in : in28 in29 in30 in31 in32 in33 in34 in35 in36

link : in1 input@powerCalc(0,0)
link : in2 input@powerCalc(0,1)
link : in3 input@powerCalc(0,2)
link : in4 input@powerCalc(0,3)
link : in5 input@powerCalc(0,4)
link : in6 input@powerCalc(0,5)
link : in7 input@powerCalc(1,0)
link : in8 input@powerCalc(1,1)
link : in9 input@powerCalc(1,2)
link : in10 input@powerCalc(1,3)
link : in11 input@powerCalc(1,4)
link : in12 input@powerCalc(1,5)
link : in13 input@powerCalc(2,0)
link : in14 input@powerCalc(2,1)
link : in15 input@powerCalc(2,2)
link : in16 input@powerCalc(2,3)
link : in17 input@powerCalc(2,4)
link : in18 input@powerCalc(2,5)
link : in19 input@powerCalc(3,0)
link : in20 input@powerCalc(3,1)
link : in21 input@powerCalc(3,2)
link : in22 input@powerCalc(3,3)
link : in23 input@powerCalc(3,4)
link : in24 input@powerCalc(3,5)
link : in25 input@powerCalc(4,0)
link : in26 input@powerCalc(4,1)
link : in27 input@powerCalc(4,2)
link : in28 input@powerCalc(4,3)
link : in29 input@powerCalc(4,4)
link : in30 input@powerCalc(4,5)
link : in31 input@powerCalc(5,0)
link : in32 input@powerCalc(5,1)
link : in33 input@powerCalc(5,2)
link : in34 input@powerCalc(5,3)
link : in35 input@powerCalc(5,4)
link : in36 input@powerCalc(5,5)


zone : power-rules { (0,6) }


portInTransition : input@powerCalc(0,0) accumulation-rules
portInTransition : input@powerCalc(0,1) accumulation-rules
portInTransition : input@powerCalc(0,2) accumulation-rules
portInTransition : input@powerCalc(0,3) accumulation-rules
portInTransition : input@powerCalc(0,4) accumulation-rules
portInTransition : input@powerCalc(0,5) accumulation-rules
portInTransition : input@powerCalc(1,0) accumulation-rules
portInTransition : input@powerCalc(1,1) accumulation-rules
portInTransition : input@powerCalc(1,2) accumulation-rules
portInTransition : input@powerCalc(1,3) accumulation-rules
portInTransition : input@powerCalc(1,4) accumulation-rules
portInTransition : input@powerCalc(1,5) accumulation-rules
portInTransition : input@powerCalc(2,0) accumulation-rules
portInTransition : input@powerCalc(2,1) accumulation-rules
portInTransition : input@powerCalc(2,2) accumulation-rules
portInTransition : input@powerCalc(2,3) accumulation-rules
portInTransition : input@powerCalc(2,4) accumulation-rules
portInTransition : input@powerCalc(2,5) accumulation-rules
portInTransition : input@powerCalc(3,0) accumulation-rules
portInTransition : input@powerCalc(3,1) accumulation-rules
portInTransition : input@powerCalc(3,2) accumulation-rules
portInTransition : input@powerCalc(3,3) accumulation-rules
portInTransition : input@powerCalc(3,4) accumulation-rules
portInTransition : input@powerCalc(3,5) accumulation-rules
portInTransition : input@powerCalc(4,0) accumulation-rules
portInTransition : input@powerCalc(4,1) accumulation-rules
portInTransition : input@powerCalc(4,2) accumulation-rules
portInTransition : input@powerCalc(4,3) accumulation-rules
portInTransition : input@powerCalc(4,4) accumulation-rules
portInTransition : input@powerCalc(4,5) accumulation-rules
portInTransition : input@powerCalc(5,0) accumulation-rules
portInTransition : input@powerCalc(5,1) accumulation-rules
portInTransition : input@powerCalc(5,2) accumulation-rules
portInTransition : input@powerCalc(5,3) accumulation-rules
portInTransition : input@powerCalc(5,4) accumulation-rules
portInTransition : input@powerCalc(5,5) accumulation-rules

[calculation-rules]
rule : {(0,0)} 100 {t}

[accumulation-rules]
rule : {portValue(thisPort)+(0,0)} 1 {t}

[power-rules]
rule : { (1.3 + 0.003*( (0,1) + (0,2) + (0,3) + (0,-3) + (0,-2) + (0,-1)
					  + (1,1) + (1,2) + (1,3) + (1,-3) + (1,-2) + (1,-1)
					  + (2,1) + (2,2) + (2,3) + (2,-3) + (2,-2) + (2,-1)
					  + (3,1) + (3,2) + (3,3) + (3,-3) + (3,-2) + (3,-1)
					  + (-3,1) + (-3,2) + (-3,3) + (-3,-3) + (-3,-2) + (-3,-1)
					  + (-2,1) + (-2,2) + (-2,3) + (-2,-3) + (-2,-2) + (-2,-1) )) } 1000 {t}


[buf1]
DEBUG_FLAG : 0

[buf2]
DEBUG_FLAG : 0

[buf3]
DEBUG_FLAG : 0

[buf4]
DEBUG_FLAG : 0

[buf5]
DEBUG_FLAG : 0

[buf6]
DEBUG_FLAG : 0

[buf7]
DEBUG_FLAG : 0

[buf8]
DEBUG_FLAG : 0

[buf9]
DEBUG_FLAG : 0

[buf10]
DEBUG_FLAG : 0

[buf11]
DEBUG_FLAG : 0

[buf12]
DEBUG_FLAG : 0

[buf13]
DEBUG_FLAG : 0

[buf14]
DEBUG_FLAG : 0

[buf15]
DEBUG_FLAG : 0

[buf16]
DEBUG_FLAG : 0

[buf17]
DEBUG_FLAG : 0

[buf18]
DEBUG_FLAG : 0

[buf19]
DEBUG_FLAG : 0

[buf20]
DEBUG_FLAG : 0

[buf21]
DEBUG_FLAG : 0

[buf22]
DEBUG_FLAG : 0

[buf23]
DEBUG_FLAG : 0

[buf24]
DEBUG_FLAG : 0

[buf25]
DEBUG_FLAG : 0

[buf26]
DEBUG_FLAG : 0

[buf27]
DEBUG_FLAG : 0

[buf28]
DEBUG_FLAG : 0

[buf29]
DEBUG_FLAG : 0

[buf30]
DEBUG_FLAG : 0

[buf31]
DEBUG_FLAG : 0

[buf32]
DEBUG_FLAG : 0

[buf33]
DEBUG_FLAG : 0

[buf34]
DEBUG_FLAG : 0

[buf35]
DEBUG_FLAG : 0

[buf36]
DEBUG_FLAG : 0
