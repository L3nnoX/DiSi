function y = faltung (x,u) 
%faltet x mit u  

%beide Vektoren auf die selbe Länge bringen
f_x = [x, zeros(1,length(u))];
f_u = [u, zeros(1,length(x))];

%Länge des gefalteten Signals bestimmen
len_y = length(x) + length(u)-1;
y = zeros(1,len_y);

% ein Durchlauf pro Ausgabeelement in y
    for i = 1:len_y
% Suche nach der zu faltenden Stelle durch gegeneinander laufen beider Vektoren       
        for j = 1:length(f_x)
            if((i-j+1)>0)
                y(i) = y(i) + f_x(j) * f_u(i-j+1);
            end
        end
    end

end