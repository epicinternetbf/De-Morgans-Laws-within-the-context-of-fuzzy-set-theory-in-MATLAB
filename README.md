# De-Morgans-Laws-within-the-context-of-fuzzy-set-theory-in-MATLAB
This MATLAB script demonstrates De Morgan's Laws within the context of fuzzy set theory. The script generates three random fuzzy sets and verifies De Morgan's First and Second Laws by computing the complements of unions and intersections of these sets. It also visualizes the original sets and the results using plots.

Script Overview

Initialization:
Number of Elements: Defines the number of elements (numElements) in each fuzzy set.
Positions: Generates a linearly spaced vector (positions) representing positions from 0 to 1.
Membership Values: Randomly generates membership values for fuzzy sets A (A_values), B (B_values), and C (C_values).

Displaying Fuzzy Sets:
Prints the positions and corresponding membership values for each fuzzy set A, B, and C.

De Morgan's First Law:
Complement Computation: Calculates the complement of each fuzzy set by subtracting their membership values from 1.
Union Complement: Determines the complement of the union of A, B, and C by taking the maximum membership values across the sets and then computing its complement.
Result: Stores the result in first_law.

De Morgan's Second Law:
Intersection Complement: Determines the complement of the intersection of A, B, and C by taking the minimum membership values across the sets and then computing its complement.
Result: Stores the result in second_law.

Displaying Results:
Prints the positions and corresponding results of De Morgan's First and Second Laws.

Visualization:
Plotting Original Fuzzy Sets: Displays the membership functions of sets A, B, and C.
Plotting De Morgan's First Law Result: Shows the membership function resulting from the first law.
Plotting De Morgan's Second Law Result: Shows the membership function resulting from the second law.

How to Run
Prerequisites: Ensure MATLAB is installed on your system.
Execution: Save the script in a .m file (e.g., de_morgans_laws_fuzzy_sets.m) and run it in the MATLAB environment.
Visualization: Upon execution, the script will display the fuzzy sets and the results in the command window and generate a figure window containing three subplots illustrating the original fuzzy sets and the results of De Morgan's First and Second Laws.

Conclusion
This script effectively demonstrates De Morgan's Laws in fuzzy set theory by generating random fuzzy sets, computing the necessary complements, and visualizing the outcomes. It serves as an educational tool for understanding how these fundamental logical principles apply within the realm of fuzzy logic.
