function [ L, U ] = lud(Y)
% L U Factorization

    L = zeros(length(Y));
    U = zeros(length(Y));

    for j = 1: length(Y)
        for i = 1:length(Y)
            sum = 0;
            p = j-1;

            for k = 1:p
                sum = sum+(L(i,k)*U(k,j));
            end

            if i == j
                U(i,j) = 1;
            end

            if i >= j
                L(i,j) = Y(i,j) - sum;
            else
                U(i,j) = (1/L(i,i))*(Y(i,j)-sum);
            end
        end
    end
end
