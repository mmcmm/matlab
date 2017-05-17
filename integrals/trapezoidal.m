function sol = imt(f, a, b, N)
    h = (b - a)/N;
    x = a:h:b;
    y = f(x);

    Xk = x(2:end)-x(1:end-1);
    Yk = y(2:end)+y(1:end-1);

    sol = 0.5*sum(Xk.*Yk);
end
