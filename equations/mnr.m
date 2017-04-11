function [ x ] = mnr( f, df, x, epsilon, max)
% Newton Raphson Method
    x_old = x;
    x = x - f(x)/df(x);
    iter = 2;
    while abs(x_old - x) > epsilon && x ~= 0 && iter <= max
        x_old = x;
        x = x - f(x)/df(x);
        iter = iter + 1;
    end

    if(iter <= max )
        fprintf('Iteratii: %d: x=%.20f\n', iter, x);
    else
        disp('Nr. de iteratii depasit!')
    end
end
