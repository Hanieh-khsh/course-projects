function children = muhtation(chrohms)
    % ___________Definfing the combination and mutation functions________________
    for i = 1:2
        a = randi([1, 8]);
        b = randi([1, 8]);
        tmp = chrohms(i,a);
        chrohms(i,a) = chrohms(i,b);
        chrohms(i,b) = tmp;
    end
    children = chrohms;
end