function y = IIR(x,ord,coef1, coef2)
%IIR 
% coef1 = [b0 b1 b2 b3 b4] bei n=4
% coef2 = [c0 c1 c2 c3] bei n=4

n = ord;
b = coef1;
c = [1, coef2];

len = (length(x)+n);
x_long = zeros(1, len);
x_long(n+1:length(x)+n) = x;
u = zeros(1,len);
y = zeros(1,len);
reg1 = zeros(1,n+1); %alle Delayelemente auf 0
reg2 = zeros(1,n+1); %alle Delayelemente auf 0

%Realisierung des IIR_Systems als erste Direktform

for i = 1:len
    for k = 1:(n+1)
        reg1(k) = x_long(k);
        u(k) = u(k) + b((n+1)+1-k)*reg1(k); 
    end 
    u = circshift(u, -(n+1));
end
for j = 1:len
    for m = 1:(n+1)
        
        y(m) = y(m) + (u(m) - c((n+1)+1-m)*reg2(m));
        reg2(m) = u(m);
    end    
    
    x_long = circshift(x_long, -(n+1));
    
end

end