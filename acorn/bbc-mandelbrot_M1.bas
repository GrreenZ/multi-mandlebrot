1 MODE 1
10 CLS
100 FOR PY=0 TO 21
110 FOR RX=0 TO 31
115 PX = 31 - RX
120 XZ = PX*3.5/32-2.5
130 YZ = PY*2/22-1
140 X = 0
150 Y = 0
160 FOR I=0 TO 14
170 IF X*X+Y*Y > 4 THEN GOTO 215
180 XT = X*X - Y*Y + XZ
190 Y = 2*X*Y + YZ
200 X = XT
210 NEXT I
215 COLOUR I-1
220 PRINT TAB(PX,PY);"#"
240 NEXT RX
260 NEXT PY
