% Number of elements in each fuzzy set
numElements = 10;

% Generate positions and membership values
positions = linspace(0, 1, numElements);    % Positions from 0 to 1
A_values = rand(1, numElements);            % Membership values for fuzzy set A
B_values = rand(1, numElements);            % Membership values for fuzzy set B
C_values = rand(1, numElements);            % Membership values for fuzzy set C

% Display the fuzzy sets
disp('Fuzzy Set A:');
disp([positions; A_values]);

disp('Fuzzy Set B:');
disp([positions; B_values]);

disp('Fuzzy Set C:');
disp([positions; C_values]);

% De Morgan's First Law: (A ∪ B ∪ C)' = A' ∩ B' ∩ C'
A_complement = 1 - A_values;
B_complement = 1 - B_values;
C_complement = 1 - C_values;

union_complement = max(A_values, max(B_values, C_values));
first_law = 1 - union_complement;

% De Morgan's Second Law: (A ∩ B ∩ C)' = A' ∪ B' ∪ C'
intersection_complement = min(A_values, min(B_values, C_values));
second_law = 1 - intersection_complement;

% Display results
disp('Result of De Morgan''s First Law (A ∪ B ∪ C)'':');
disp([positions; first_law]);

disp('Result of De Morgan''s Second Law (A ∩ B ∩ C)'':');
disp([positions; second_law]);

% Plot the fuzzy sets and results
figure;

% Plot original fuzzy sets
subplot(3, 1, 1);
plot(positions, A_values, 'r-o', 'DisplayName', 'A');
hold on;
plot(positions, B_values, 'g-o', 'DisplayName', 'B');
plot(positions, C_values, 'b-o', 'DisplayName', 'C');
legend('show');
title('Original Fuzzy Sets A, B, C');
xlabel('Position');
ylabel('Membership Value');
hold off;

% Plot De Morgan's First Law result
subplot(3, 1, 2);
plot(positions, first_law, 'k-o', 'DisplayName', '(A ∪ B ∪ C)''');
legend('show');
title('De Morgan''s First Law: (A ∪ B ∪ C)''');
xlabel('Position');
ylabel('Membership Value');

% Plot De Morgan's Second Law result
subplot(3, 1, 3);
plot(positions, second_law, 'm-o', 'DisplayName', '(A ∩ B ∩ C)''');
legend('show');
title('De Morgan''s Second Law: (A ∩ B ∩ C)''');
xlabel('Position');
ylabel('Membership Value');
