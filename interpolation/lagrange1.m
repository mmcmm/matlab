function [ L ] = lagrange1(pointx, pointy)
   % Lagrange Basic
   n = length(pointx);
   for i=1:n
      p=1;
      for j=1:n
          if j~=i
             p=p*(pointx(i)-pointx(j));
          end
      end
      L(i)=pointy(i)/p;
   end
end
