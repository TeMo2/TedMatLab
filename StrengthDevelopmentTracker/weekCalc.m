function W = weekCalc(X)

%weekCalc will take date vectors in the format 00/00/0000 and convert it to
%the distance in number of days from the most recent date. This function is
%used to be able to make further anaylses of the data based on the time
%between lift attempts
  

W = daysact(X, X(end));
    
end 
    
    
 