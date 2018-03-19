% Average integration for subsets of X with size k ? 1 and k ? n
function Ik_avg = average_k_integration(X, k)
    n = size(X,1);
    perms = nchoosek(1:n, k);
    perm_num = size(perms,1);
    integrations = zeros(perm_num,1);
    
    for perm = 1:perm_num
        
        tmp_X = [];
        for i = 1:k
            tmp_X = [tmp_X; X(i,:)];
        end
        
        integrations(perm) = integration(tmp_X);
    end
    
    Ik_avg = integrations / perms_num;
end