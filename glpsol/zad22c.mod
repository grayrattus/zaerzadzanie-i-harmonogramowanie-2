set  T;
set  L;
set O;
param p{T, L};
var x{L, T, O} >=0;
var Cmax >= 0;

minimize f: 
  sum {l in L}
  sum {j in T}
  sum {k in O}
  p[j, l] * x[l,j,k] * k - 1;

subject to c1 {j in T}:
  sum {l in L}
  sum {k in O}
  x[l,j,k] = 1;

subject to c2{l in L, k in O}:
  sum{j in T} x[l,j,k] <= 1;

solve;
display x;

data; 
set  O  :=  1,2,3,4,5,6,7,8;

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
