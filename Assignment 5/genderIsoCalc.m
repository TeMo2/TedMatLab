function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(category_vector, x1, x2, x3)
%genderIsoCalc 
%Inputs
    %category_vector: a column categorical vector 
    %x1: inster a column vector 
    %x2 insert a column vector 
    %x3 insert a column vector    



%find the average of days 1-3 for each man  
%first it finds the string 'M' to identify the male gender and the means are taken from the corresponding locations in each column vector  
       males = find(category_vector == 'M');
       maleIsoIndMeans = (x1(males) + x2(males) + x3(males))/(3)
   
   
%find the average of days 1-3 for each woman
%first it finds the string 'F' to identify the male gender and the means are taken from the corresponding locations in each column vector 
  
    females = find(category_vector == 'F');
    femaleIsoIndMeans = (x1(females) + x2(females) + x3(females))/(3)
  
   
  %calculates the mean for the men and women categories 
  maleGroupIsoMean = mean(maleIsoIndMeans)  
  femaleGroupIsoMean = mean(femaleIsoIndMeans)
end 


 