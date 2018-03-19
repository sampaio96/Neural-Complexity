function MI = mutual_information (groupA, groupB)

MI = entropy(groupA) + entropy(groupB) - entropy([groupA; groupB]);