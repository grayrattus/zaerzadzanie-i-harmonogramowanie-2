set  T;
set  L;
param p{T};
var  x{L,  T}  >=0;
var  Cmax  >=  0;
minimize  max_time: Cmax;

subject  to  c1{l  in  T}:
  sum  {j  in  L}  x[j,l]  =   p[l];
subject  to  c2{j  in  L}:
  sum  {l  in  T}  x[j,l]  <=  Cmax;
subject  to  c3{l  in  T}:
  sum  {j  in  L}  x[j,l]  <=  Cmax;

solve;
display x;

data; 
set L :=  1,2;
set T :=  A,B,C,D,E,F,G,H;
param p  :=
A 14
B 12
C 5
D 12
E 14
F 10
G 8
H 7;

end;
