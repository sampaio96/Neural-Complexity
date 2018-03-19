function bool = independence(groupA, groupB)
    bool = isequal(mutual_information(groupA, groupB), 0);
end