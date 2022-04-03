set  T;
set  L;
param p{T, L};
var  x{L,  T} >=0;
var  Cmax  >=  0;

minimize  max_time: Cmax;

subject  to  c1{j in  T}:
  sum  {l  in  L} x[l,j] / p[j,l] = 1;

subject  to  c2{l in  L}:
  sum  {j  in  T} x[l, j] <= Cmax;

subject  to  c3{j in  T}:
  sum  {l  in  L} x[l, j] <= Cmax;

solve;
display x;

data; 
set  L  :=  1,2;
set  T  :=  A,B,C,D,E,F,G,H;
param  p :=
A 1  14
B 1  14
C 1  5
D 1  11
E 1  14
F 1  12
G 1  8
H 1  9
A 2  9
B 2  16
C 2  8 
D 2  9
E 2  12
F 2  16
G 2  5
H 2  17;

end;
