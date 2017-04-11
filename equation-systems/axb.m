function [ x ] = axb(A, b)
 % A * x = b
 [L, U] = lud(A);

 z = ex3(L, b);
 x = ex4(U, z);
end

