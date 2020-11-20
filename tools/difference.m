function y = difference(x)
%  y[k] = x[k]-x[k-1]

y = zeros(1,length(x));

for k  = 1:length(x)
    if k == 1
        y(k) = x(k); %Annahme x(0)=0
    else 
        y(k) = x(k)-x(k-1);
    end
end