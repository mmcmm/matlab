function [ x ] = uxb(A , b)
 % U * x = b
 n = size(A, 1);
 for i = n:-1:1
    if A(i, i) ~= 0
        s = 0;
        for j = i + 1:n
            s = s + A(i, j) * x(j);
        end
        x(i) = (b(i) - s) / A(i, i);
    else
        disp('Solution nu e unica');
        break;
    end
 end
end
