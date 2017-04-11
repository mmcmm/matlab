function [ s ] = ms(f, x0, x1, epsilon, max)
%  Secant Method

i = 2;
x(1) = x0;
x(2) = x1;

while abs(f(x(i))) > epsilon && i <= max
     x(i+1) = x(i) - f(x(i)) * (x(i) - x(i-1)) / (f(x(i)) - f(x(i-1)));
     i = i + 1;
end

    if i<= max
        fprintf('Iteratii: %d: x=%.20f\n', i, x(i));
    else
        disp('Metoda nu converge. Nr maxim de iteratii este depasit!')
    end

s = x(i);

end
