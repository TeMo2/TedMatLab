function [Diff_Days,LiftMeanDays] = Mean_Days(Days_Vec) 

%intialize an array of zeros to put the values from each for loop iteration
A = zeros([1 13]);

%this will loop through the input array calculating the number of days between
%each 1-RM test and save in in "A" replacing the zeros. 
for i = 1:length(Days_Vec)
    if Days_Vec(i) ~= 0 
        
    D = Days_Vec(i) - (Days_Vec(i+1));
    A(i) = D;
    else 
    end 
    % after all the values have been assigned to A, the values will be
    % assigned to a new array  designated in the main script for each
    % of the lifts
    
  Diff_Days = A;
  
  %this will put the data in a column vector to make export more smooth
  Diff_Days = Diff_Days(:);
  
  %this will return the mean of the values in the input vector
  LiftMeanDays = mean(Diff_Days);
    
   
    
end 