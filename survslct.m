function dslcted = survslct(population, children)
    % ___________Reproducing a new population as a subtitute for the worse population_________________
    for i = 1:length(population)
        fits(i) = fitness(population(i,:));
    end
    [values idh] = sort(fits);
    population(idh(end-1),:) = children(1,:);
    population(idh(end),:)   = children(2,:);
    dslcted = population;
end