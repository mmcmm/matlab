n = input('n = ');
x = input('x =');
y = input('y =');
M = [n sum(x); sum(x) sum(x.^2)]
v = [sum(y) ; sum(x.*y)]
s = M \ v
fprintf('y = %.2fx + %.2f', s(1, 1), s(2, 1))
