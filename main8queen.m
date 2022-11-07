close all
clear
clc

popsize = 100;

% ___________Initializing a population___________________
pop = zeros(popsize,8);
for i = 1:popsize
    pop(i,:) = randperm(8);
end

huray = 0;
fits = zeros(100,1);
for itrn = 1:1000
    
    if huray == 1
        disp('A possible solution for this issue is illustrated by the followup figure.The positions are defined by number of rows.')
        disp('_______________________________________________________________________________________________________ ')
        show(result)
        result
        break
    end
    
    % ___________Selecting parents________________________
    parents = parslct(pop,3,2);
    
    % ___________Applying crossover_______________________
    children = crossover(parents);
    
    % ___________Applying Mutation________________________
    p = rand();
    if p <= 0.9
        children = muhtation(children);
    end
    
    % ___________Selecting survival population____________
    pop = survslct(pop, children);
    
    % ___________Finding the best solution_________________
    for i = 1:length(pop)
        fits(i) = fitness(pop(i,:));
        if fits(i) == 0
            result = pop(i,:);
            huray = 1;
        end
    end
end
