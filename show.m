function show(chrohm)
%___________who knows what is the functionality of this function? :)______________
    grnd = [1 0 1 0 1 0 1 0
              0 1 0 1 0 1 0 1
              1 0 1 0 1 0 1 0
              0 1 0 1 0 1 0 1
              1 0 1 0 1 0 1 0
              0 1 0 1 0 1 0 1
              1 0 1 0 1 0 1 0
              0 1 0 1 0 1 0 1];

    ihtem = zeros(8,8);
    for i = 1:8
        ihtem(chrohm(i),i) = 3;
    end
        
    chess = grnd+ihtem;
    chess(chess>3) = 3;
    imagesc(chess)
    axis equal
end