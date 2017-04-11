function [ x ] = axb(A, b)
 % A * x = b
 [L, U] = lud(A);

 z = lxb(L, b);
 x = uxb(U, z);
end

