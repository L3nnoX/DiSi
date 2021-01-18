function kausal = kausalitaet(x)
%prüft ein System auf Kausalität mit Bezug auf einem Dirac als Eingangssignal

for k = 1:length(x)
    if x(k)~= 0                     %1.Prüfbedingung =    x(k) =/= 0
        if k < floor(length(x)/2)   %2.Prüfbedingung =    k ist vor dem einzelnen Eingangsdiracimpuls
            kausal = 0
            return
        else 
            kausal = 1
            return
        end
    end
end
end