function I = integration(A, B)
% Deviation from independence among the n components of a system A,
if nargin == 1
    I = 0;
    for component = 1:size(A,1)
        I = I + entropy(component);
    end
    I = I - entropy(A);
    
% or in a bipartition of X into A and B
else
    I = integration(A) + integration(B) + mutual_information(A,B);
end