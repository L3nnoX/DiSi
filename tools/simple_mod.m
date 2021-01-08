function y = simple_mod(x)
% moduliert das Eingangssignal mit einer cos-Schwingung

y = zeros(1, length(x));        %Initialisierung vom Ausgangsvektor
for k = (1:length(x))
    y(k) = x(k) *cos((pi/4)*k); %Modulation (Multiplikation)
end

end

