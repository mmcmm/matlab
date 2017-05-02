function a = newtoninterpolation1(x, y)
%   Newton's Interpolation basic
    n = length(x);
    a(1) = y(1);
    for k = 1 : n - 1
       d(k, 1) = (y(k+1) - y(k))/(x(k+1) - x(k));
    end
    for j = 2 : n - 1
       for k = 1 : n - j
          d(k, j) = (d(k+1, j - 1) - d(k, j - 1))/(x(k+j) - x(k));
       end
    end
    d;
    for j = 2 : n
       a(j) = d(1, j-1);
    end
