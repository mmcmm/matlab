function [ rxm ] = mbis(f, a, b, epsilon, max)
% bisection method
l = a;
u = b;
i = 0;
xm = (l + u) / 2;
rxm = 0;
if f(a)*f(b)>0
    disp('a sau b gresit')
else
    while i <= max && (abs(f(xm)) > epsilon)
        if(f(xm) * f(l)) < 0
            u = xm;
        else
            l = xm;
        end
        i = i + 1;
        xm = (l + u) / 2;
    end

    if abs(f(xm)) <= epsilon
        rxm = xm;
        fprintf('solutia este %d, nr de iteratii %d.\n', rxm, i)
    else
       disp('nr max the iteratii depasit')
    end
end
