function Lift_Change = ProgressTracker(Max_Vec)

%An input vector of 1-RM of each lift is needed as an input variable

%this function will check to see if there is improvements made in each lift
%between the two most recent attempts of the lift. If there is a decrease
%it will return a negative number equal to the decrease in weight lifted and if
%there is an increase it will output a positive number referring to the
%increase in weight lifted. 


 if Max_Vec(end) < Max_Vec(end-1)
     
     Lift_Change = Max_Vec(end) - Max_Vec(end-1); 
     
     fprintf 'please re-evaluate training program\n'
     
 else
     Max_Vec(end) > Max_Vec(end-1);
     
     Lift_Change = Max_Vec(end) - Max_Vec(end-1);
     
     fprintf 'Keep up the good work!\n'
 end     
end 