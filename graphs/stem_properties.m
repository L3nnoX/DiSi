function stem_properties(tit, x_label, y_label,x)
%sets properties for plot-graphs

%tit = title of the plot
%x_label = label for x-axis
%y_label = label for y-axis
%x = plotted graph

if strcmpi(tit, '') == 1
    title('unnamed graph');
else title(tit);
end

ax = gca;

xlim([0 length(x)+(length(x)/10)]);
ylim([min(x)-max(x)/10 max(x)+max(x)/10]);

xlabel(x_label);
ylabel(y_label);
grid on;
grid minor;

end