function y = FIR(x,ord,coef)
%FIR-Filter (finite impulse response)
% coef = [a0 a1 a2 a3 a4] bei n=4

n = ord;
a = coef;

len = (length(x)+n);
x_long = zeros(len);            %Verlängerung des Eingangssignals mit n Nullen
x_long(1:length(x)) = x;

y = zeros(1,len);               %Initialisierung des Ausgangs
reg = zeros(1,n+1);             %Register mit allen Delayelementen auf 0

%Realisierung des FIR_Systems als "tapped-delay-line" (Direktform)
for k = 1:len
    
    reg(1) = x_long(k);         %1. Registerstelle füllen
        
    y(k) = sum(a .* reg);       %Registerwerte mit Koeffizienten multiplizieren und aufsummieren für aktuellen Ausgang
  
    reg = circshift(reg, 1);    %Register um eine Stelle verschieben
end

end