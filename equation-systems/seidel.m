function [ x ] = seidel(a,b,n,epsilon,x0,MAX)
x=x0;
d=0;
iter=0;

while(d<n & iter<MAX)
      d=0;
       for i=1:n
                xold(i) = x(i)
       end
       for i=1:n
                s=0;
                  for j=1:n
                           if i ~= j
                               s=s+a(i,j)*x(j);
                           end
                  end
                  x(i)=(b(i)-s)/a(i,i);
       end
        for i=1:n
                diff(i)=abs(x(i)-xold(i));
                 if diff(i)<=epsilon;
                     d=d+1;
                 end
        end
      iter=iter+1;

   if d<n
       fprintf('to many iterations')
   end
end
end
