%Ted Morrison 

%Strength Develpoment Tracker  
%Dec 1, 2017

%To run this code you will need the "Strength_ProgressData.xlsx" file that
%I have provided.

%This code is written to import data from an excel file. Anaylze the data
%using date and time functions as well as the progress of each lift over
%time and generate a graph to illustrate that progress which will be
%exported to a csv file. If progress in a lift is haluted or there is a
%decrease in weight lifted, this program will prompt the used to
%re-evaulate their training program to avoid further decrements. 

%import function for the data 

 [LiftDay,SquatDate,SquatMax,BenchPressDate,BenchPressMax,DeadliftDate,DeadliftMax] = weight_dataimport('Strength_ProgressData.xlsx','MainLiftLog',2,18);

 

%the weeCalc fucntion returns the number of between the end date of the
%data and the date of first lift in the corresponding vectors (SquatDate,
%BenchPressDate, DeadliftDate)
 
SquatDays = weekCalc(SquatDate);

DeadliftDays = weekCalc(DeadliftDate);

BenchPressDays = weekCalc(BenchPressDate);

%Mean_Days will return the average number of days between each 1-RM attempt
%for each specific lift the and the mean days between each time the
%specific lift was repeated in training. The difference between each day
%will be exported as a row vector to identify if there is a lapse in time
%bewteen attempts that the user may need to correct or if there is a lapse
%in data collection but that will be for the user to determine outside of
%the program. 

  
[SquatDayDiff,SquatMeanDays] = Mean_Days(SquatDays);


[DeadliftDayDiff,DeadliftMeanDays] = Mean_Days(DeadliftDays);


[BenchPressDayDiff,BenchPressMeanDays] = Mean_Days(BenchPressDays);




%A line graph will be constructed by this portion of the code to give a
%visual representation of the data. All three lines are put onto one graph
%for comparison of the rates of change in the each lift
plot(BenchPressDate, BenchPressMax)
hold on 

plot(SquatDate, SquatMax)
hold on 

plot(DeadliftDate, DeadliftMax)

%this codes gives the proper titles and labels needed for readability of
%the graph of the progression of weight lifted over time
title('Strength Over Time')
xlabel('Date')
ylabel('Weight (lbs)')
legend('Bench Press', 'Squat', 'Deadlift')


%if there is a decrease in weight lifted from the second to last testing
%day and the most recent (or last) testing day this function will return
%the amount the weight decreased and prompt the user to re-evaluate their
%training program to alleviate the issue. 

%This particular data set does not yield a positive value however it was been tested to ensure that if there
%was it would output a positive integer representing the increase in weight

SquatStrengthDiff = ProgressTracker(SquatMax);

BenchStrengthDiff = ProgressTracker(BenchPressMax);

DeadliftStrengthDiff = ProgressTracker(DeadliftMax);

%Each of the following groups of code writes the results of the data
%analysis into a different sheet of the same excel file. They export to a
%file named "Strength_Tracker.xls"

%write to Excel file 
T = table(Squat_Diff, BenchPressDayDiff, DeadliftDayDiff);
T.Properties.VariableNames = {'SquatDayDiff','BenchPressDayDiff','DeadliftDayDiff'};
writetable(T,'Strength_Tracker.xls','Sheet','DaysBetweenTest','Range','A1:C17');

%write means to excel file
T = table(SquatMeanDays, BenchPressMeanDays, DeadliftMeanDays);
T.Properties.VariableNames = {'SquatMeanDays','BenchPressMeanDays','DeadliftMeanDays'};
writetable(T,'Strength_Tracker.xls','Sheet','MeanDaysBetweenTest','Range','A1:C2');

%write the results from the ProgressTracker function indicating the change
%in weight lifted in the last two sessions

T = table(SquatStrengthDiff,BenchStrengthDiff,DeadliftStrengthDiff);
T.Properties.VariableNames = {'SquatStrengthDiff','BenchStrengthDiff','DeadliftStrengthDiff'};
writetable(T,'Strength_Tracker.xls','Sheet','StrengthChange','Range','A1:C2');
