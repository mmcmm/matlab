function [ x ] = jacobi(a, b, epsilon, MAX, x0)
 % Gauss-Jacobi Method
n = length(b);
x = x0;
iter = 0;
d = 0;

while(d < n && iter < MAX)
    d = 0;
    for i = 1:n
        s = 0;
        for j = 1:n
            if i ~= j
                s = s + a(i,j) * x(j);
            end
        end
        xnew(i) = (b(i) - s) / a(i,i);
    end
    disp(xnew)
    for i=1:n
        diff(i) = abs( xnew(i) - x(i));
        x(i) = xnew(i);
        if diff(i) <= epsilon
            d = d + 1;
        end
    end
    iter = iter + 1;
end
    if d < n
        disp('nr iteratii depasit')
    end

end
