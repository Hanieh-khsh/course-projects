function dslcted = parslct(population,H,K)
    % ______________Defining the function for selecting the parents____________
    all_selected = population(randperm(8,H),:);
    fits = zeros(1,H);
    for i = 1:H
        fits(i) = fitness(all_selected(i,:));
    end
    [values idh] = sort(fits);
    dslcted = population(idh(1:K),:);
end