function [ x ] = ex3(A , b)
 % L * x = b
 n = size(A, 1);
 for i = 1:1:n
    if A(i, i) ~= 0
        s = 0;
        for j = 1:i - 1
            s = s + A(i, j) * x(j);
        end
        x(i) = (b(i) - s) / A(i, i);
    else
        disp('Solution nu e unica');
        break;
    end
 end
