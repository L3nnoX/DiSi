function y = simple_mod(x)
% modulates the input signal with a cos-function

y = zeros(1, length(x));
for k = (1:length(x))
    y(k) = x(k) *cos((pi/4)*k);
end

end

