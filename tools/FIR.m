function y = FIR(x,ord,coef)
%FIR 
% coef = [a0 a1 a2 a3 a4] bei n=4

n = ord;
a = coef;

len = (length(x));

y = zeros(1,len);           %Initialisierung des Ausgangs
reg = zeros(1,n+1);         %Register mit allen Delayelementen auf 0

%Realisierung des FIR_Systems als "tapped-delay-line" (Direktform)
for k = 1:len
    
        reg(1) = x(k);          %1. Registerstelle füllen
        
        y(k) = sum(a .* reg);   %Registerwerte mit Koeffizienten multiplizieren und aufsummieren für aktuellen Ausgang
  
    
    reg = circshift(reg, 1);    %Register um eine Stelle verschieben
end


% n = ord;
% a = zeros (1,n+1);
% if nargin == 3
%     a = coef;
% end
% len = length(x)+n;
% x((length(x)+1):len) = 0;
% y = zeros(1,len);
% 
% %Realisierung des FIR_Systems durch Differentialgleichung
% for k =1:length(y)
%     for i = 1:(n+1)
%         if k-i >= 0
%             y(k) = y(k) + a(i)*x(k-i+1);
%         end
%     end
% end

end