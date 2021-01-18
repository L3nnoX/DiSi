function y = IIR(x,ord,coef1, coef2)
%IIR 
% coef1 = [b0 b1 b2 b3 b4] bei n=4
% coef2 = [c1 c2 c3 c4] bei n=4

n = ord;
b = coef1;
c = coef2;
c = c.* (1/c(1));

len = (length(x));
% x_long = zeros(1, len);
% x_long(n+1:length(x)+n) = x;
u = zeros(1,len);
y = zeros(1,len);
reg1 = zeros(1,n+1); %alle Delayelemente auf 0
reg2 = zeros(1,n+1); %alle Delayelemente auf 0

%Realisierung des IIR_Systems als erste Direktform

%Vorwärtszweig (FIR-Teil)
for k = 1:len
    
        reg1(1) = x(k);          %Register füllen mit Eingangsvektor
        
        u(k) = sum(b .* reg1);   %Registerwerte mit Koeffizienten multiplizieren und aufsummieren für aktuellen Ausgang
  
    
    reg1 = circshift(reg1, 1);   %Register um eine Stelle verschieben
end

%Rückgekoppelter Zweig
for m = 1:len
        if m ==1
            y(m) = u(m);
        else
            reg2(1) = y(m-1);     %1. Registerstelle füllen mit rückgekoppeltem Ausgang
            y(m) = u(m) - sum(reg2(1:length(c)-1) .* c(2:end));   %"Rückkoplung"
                    
        end
    
    reg2 = circshift(reg2, 1);    %Register um eine Stelle verschieben
    
end

end