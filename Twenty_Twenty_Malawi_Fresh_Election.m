% Program to determine the majority winner of an election.
% This software prompts the user to enter the total valid votes for each candidate.
% It calculates and compares the votes to determine the candidate with the highest vote count.
% The program is designed to handle multiple candidates and identifies the winner of the election.
%
% Developed by: Ian Carter Kulani
% Purpose: To calculate and display the winner of an election based on vote counts.
% Contact: iancarterkulani@gmail.com | Phone: +265988061969




% MATLAB code for Election Vote Counter and Statistics with Pie and Bar Charts

% Input: Total Number of Registered Voters
Total_Registered_Voters = input('Enter Total Number of Registered Voters:');

% Input: Total Number of Valid Votes
Total_Valid_Votes = input('Enter Total Number of Valid Votes:');

% Input: Total Number of Invalid/Blank Votes
Total_Null_and_Void_Votes = input('Enter Total Number of Invalid/Blank Votes:');

% Input: Total Valid Votes for each party
Total_valid_Votes_For_Malawi_Congress_Party = input('Enter Total Valid Votes for Malawi Congress Party:');
Total_Valid_Votes_For_Democratic_Progressive_Party = input('Enter Total Valid Votes for Democratic Progressive Party:');
Total_Valid_Votes_For_Mbakuwaku_Movement_For_Development = input('Enter Total Valid Votes for Mbakuwaku Movement for Development:');

% Calculate Majority needed for a party to win
majority = Total_Valid_Votes / 2 + 1;

% Determine the winner based on majority
if Total_valid_Votes_For_Malawi_Congress_Party >= majority
    fprintf('Malawi Congress Party is the winner of the 2020 Elections\n');
elseif Total_Valid_Votes_For_Democratic_Progressive_Party >= majority
    fprintf('Democratic Progressive Party is the winner of the 2020 Elections\n');
elseif Total_Valid_Votes_For_Mbakuwaku_Movement_For_Development >= majority
    fprintf('Mbakuwaku Movement for Development is the winner of the 2020 Elections\n');
else
    fprintf('No party received a majority of the votes.\n');
end

% Calculate the percentage of votes each party received
mcp_percentage = (Total_valid_Votes_For_Malawi_Congress_Party / Total_Valid_Votes) * 100;
dpp_percentage = (Total_Valid_Votes_For_Democratic_Progressive_Party / Total_Valid_Votes) * 100;
mbm_percentage = (Total_Valid_Votes_For_Mbakuwaku_Movement_For_Development / Total_Valid_Votes) * 100;

% Print the percentage of votes each party received
fprintf('\nElection Results:\n');
fprintf('Malawi Congress Party - %.2f%%\n', mcp_percentage);
fprintf('Democratic Progressive Party - %.2f%%\n', dpp_percentage);
fprintf('Mbakuwaku Movement for Development - %.2f%%\n', mbm_percentage);

% Plot Pie Chart
labels = {'MCP', 'DPP', 'MBM'};
votes = [Total_valid_Votes_For_Malawi_Congress_Party, ...
         Total_Valid_Votes_For_Democratic_Progressive_Party, ...
         Total_Valid_Votes_For_Mbakuwaku_Movement_For_Development];

figure;
subplot(1, 2, 1); % Create pie chart in the first subplot
pie(votes, labels);

% Set the colors for each section in the pie chart
colormap([1, 0, 0; 0, 0, 1; 0.5, 0.5, 0.5]); % Red, Blue, and Gray

title('Election Results - Pie Chart');

% Plot Bar Chart
subplot(1, 2, 2); % Create bar chart in the second subplot
bar(votes);

% Set the X-axis labels
set(gca, 'XTickLabel', labels);
xlabel('Political Parties');
ylabel('Number of Votes');
title('Election Results - Bar Chart');
