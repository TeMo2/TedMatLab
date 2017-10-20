%Ted Morrison 

%Assignment #5 
%October 20, 2017 

%This code is written to import and analzye isometric strength data of both
%men and women across three trials (days) 


%'importfile' is a function created to import a spreadsheet into separate
%column vectors. The outputs are defined by the name of column in which
%reside in the file. File names used in this script are specific to the
%file that I am using so be sure to change those accordingly based on the
%data you wish to import. 

[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv',2, 26);

%genderIsoCalc requires the input of a categorical vector, in this script
%'Gender' and 3 column vectors containing data collected over 3 separate
%days. This function returns individual means for both males and females
%across 3 days and an overall mean for each gender category.

[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean]= genderIsoCalc(Gender, Day1, Day2, Day3);

%This function will return the the participants that yielded an increase in
%isokinetic strength values from day 1 to day 2 as well as day 2 to day 3.
%The output vector matrices (day1toDay2 and day2toDay3) are representaive of the subjects position in
%the data set.

day1toDay2 =  dayComparator(SubjectID, Day1, Day2);

day2toDay3 = dayComparator(SubjectID, Day2, Day3 );


%Normalizes Day1, Day2, and Day3 vectors indivdually and calculates the
%mean for each normalized data set 

%Day 1 weight normalize and group mean 
  
weight_normDay1 = (Day1./Weight); 
normDay1mean = mean(weight_normDay1);


%Day2 weight normalize and group mean

weight_normDay2 = (Day2./Weight);
normDay2mean = mean(weight_normDay2);


%Day3 weight normalize and group mean

weight_normDay3 = (Day3./Weight);
normDay3mean = mean(weight_normDay3);



%pad vectors with zeros 

day1toDay2(end+1:end+1) = 0; %adds a zero to match largest column vector being exported   
day2toDay3(end+1:end+2) = 0; %adds two zeros to match largest column vector being exported
femaleIsoIndMeans(end+1:end+1) = 0; %adds one zero to match largest column vector being exported

%initially the first line code in this section makes the means a row
%vector. The second line of code with each variable converts the row vector
%to column vector so it can be exported to a csv file. 

femaleGroupIsoMean(end+1:end+12) = 0;
femaleGroupIsoMean = femaleGroupIsoMean(:);

maleGroupIsoMean(end+1:end+12) = 0;
maleGroupIsoMean = maleGroupIsoMean (:);

normDay1mean(end+1:end+12) = 0;
normDay1mean = normDay1mean (:);


normDay2mean(end+1:end+12) = 0;
normDay2mean = normDay2mean (:);


normDay3mean(end+1:end+12) = 0;
normDay3mean = normDay3mean (:);



%writes the column vectors into a csv file but does not generate header
%names

isok_data = [day1toDay2,day2toDay3,femaleGroupIsoMean,femaleIsoIndMeans,maleGroupIsoMean,maleIsoIndMeans,normDay1mean,normDay2mean,normDay3mean];
csvwrite('iso_results.csv',isok_data)


%writes in the header names for each varible in the csv file generated 
T = table(day1toDay2,day2toDay3,femaleGroupIsoMean,femaleIsoIndMeans,maleGroupIsoMean,maleIsoIndMeans,normDay1mean,normDay2mean,normDay3mean);
T.Properties.VariableNames={'day1toDay2','day2toDay3','femaleGroupIsoMean','femaleIsoIndMeans','maleGroupIsoMean','maleIsoIndMeans','normDay1mean','normDay2mean','normDay3mean'};
writetable(T,'iso_results.csv','Delimiter',',');
