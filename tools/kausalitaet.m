function kausal = kausalitaet(x)
%KAUSALITAET Summary of this function goes here



for k = 1:length(x)
    if x(k)~= 0 
        if k < floor(length(x)/2) 
            kausal = 0
            return
        else 
            kausal = 1
            return
        end
    end

end

end

