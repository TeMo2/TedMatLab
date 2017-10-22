function day_difference = dayComparator(participant_vector, y1, y2)
 
%This function creates a vector of the subjects that
%had higher isometric strength values between matrix inputs 
   day_difference = participant_vector(y1 < y2); 
    
         
end
        
  