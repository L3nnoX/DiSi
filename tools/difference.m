function y = difference(x)
%  y[k] = x[k]-x[k-1]

y = zeros(1,length(x));     %Initialisierung vom Ausgangsvektor

for k  = 1:length(x)
    if k == 1               %Annahme x(0)=0
        y(1) = x(1);        
    else 
        y(k) = x(k)-x(k-1); %Differenzbildung mit dem vorherigen Element
    end
end