10 REM Mandelbrot 
100 FOR y=0 TO 21
110 FOR x=0 TO 31
120 LET xz=x*3.5/32-2.5
130 LET yz=y*2/22-1
140 LET xx=0
150 LET yy=0
160 FOR i=0 TO 14
170 IF xx*xx+yy*yy>4 THEN GO TO 215
180 LET xt=xx*xx-yy*yy+xz
190 LET yy=2*xx*yy+yz
200 LET xx=xt
210 NEXT i
215 LET i=i-1
220 PRINT CHR$(i+32);CHR$(i+32);
240 NEXT x
245 PRINT
250 NEXT y
260 SYSTEM
