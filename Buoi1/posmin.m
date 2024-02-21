function mid_point = posmin(v)
mid_point = 1;
for i = 2:length(v)
    if v(i) < v(mid_point)
        mid_point = i;
    end;
end;


