%Theodore Morrison 

%Assignment 3

%Septempter 27

%This code is built to play tic tac toe
% 0 = O's and -1 = X's
% the O's(or 0) are assigned to the user and the X's( or -1) are assigned to
% the CPU opponent 


%Welcome message 
fprintf('Tic-Tac-Toe!\nMay the odds be in your favor!\n');
players = input('Choose the number of human players: ');

fprintf('CPU will be -1 and you will be assigned "0" on the playing board\n')

%Show gameboard
GameBoard = [3:5;6:8;9:11];

%The following code is written to give the computer to make the first move

fprintf('The CPU will move first')

%find available spots and eliminate previous moves from CPU options
CompMove = find(GameBoard >=3);
CompTurn = CompMove(randperm(length(CompMove),1))

switch(CompTurn)
    case 1
        GameBoard(1,1)= -1;
    case 2 
        GameBoard(1,2)= -1;
    case 3 
        GameBoard(1,3)= -1;
    case 4 
        GameBoard(2,1)= -1;
    case 5
        GameBoard(2,2)= -1;
    case 6
        GameBoard(2,3)= -1;
    case 7
        GameBoard(3,1)= -1;
    case 8 
        GameBoard(3,2)= -1;
    case 9
        GameBoard(3,3)= -1;
end 

GameBoard


%Prompt the user to make their first move

fprintf('If you do not enter a number between 3-11 you will lose your turn\n')

X = input('Make your move, pick a number 3-11 on the board: ');
switch (X)
    case 3
      GameBoard(1,1)=0;
    case 4 
        GameBoard(1,2)=0;
    case 5 
        GameBoard(1,3)=0;
    case 6 
        GameBoard(2,1)=0;
    case 7
        GameBoard(2,2)=0;
    case 8
        GameBoard(2,3)=0;
    case 9
        GameBoard(3,1)=0;
    case 10 
        GameBoard(3,2)=0;
    case 11
        GameBoard(3,3)=0;
    otherwise
     fprintf('that is not a valid move\n')
     
end

GameBoard


        
%Computer's second move

fprintf('computer move')

%find available spots and eliminate previous moves from CPU options
CompMove = find(GameBoard >=3);
CompTurn = CompMove(randperm(length(CompMove),1))

switch(CompTurn)
    case 1
        GameBoard(1,1)= -1;
    case 2
        GameBoard(1,2)= -1;
    case 3 
        GameBoard(1,3)= -1;
    case 4 
        GameBoard(2,1)= -1;
    case 5
        GameBoard(2,2)= -1;
    case 6
        GameBoard(2,3)= -1;
    case 7
        GameBoard(3,1)= -1;
    case 8 
        GameBoard(3,2)= -1;
    case 9
        GameBoard(3,3)= -1;
end 
        
       
GameBoard

%User's second move

X = input('Make your move, pick a number 3-11 on the board: ');
switch (X)
    case 3
      GameBoard(1,1)=0;
    case 4 
        GameBoard(1,2)=0;
    case 5 
        GameBoard(1,3)=0;
    case 6 
        GameBoard(2,1)=0;
    case 7
        GameBoard(2,2)=0;
    case 8
        GameBoard(2,3)=0;
    case 9
        GameBoard(3,1)=0;
    case 10 
        GameBoard(3,2)=0;
    case 11
        GameBoard(3,3)=0;
    otherwise
     fprintf('that is not a valid move\n')
     
end

GameBoard


        
%Computer's third move 

fprintf('computer move')

%find available spots and eliminate previous moves from CPU options
CompMove = find(GameBoard >=3);
CompTurn = CompMove(randperm(length(CompMove),1))

switch(CompTurn)
     case 1
      GameBoard(1,1)= -1;
    case 2 
        GameBoard(2,1)= -1;
    case 3 
        GameBoard(3,1)= -1;
    case 4 
        GameBoard(1,2)= -1;
    case 5
        GameBoard(2,2)= -1;
    case 6
        GameBoard(3,2)= -1;
    case 7
        GameBoard(1,3)= -1;
    case 8 
        GameBoard(2,3)= -1;
    case 9
        GameBoard(3,3)= -1;
end  

GameBoard

%This portion of the code is written to check and see if the computer has
%won. If not the game continues on to the user's next turn 
%if you choose to press 1 it will close matlab so if you do not want matlab
%to close it do not press 1

    if  GameBoard(1,1) + GameBoard(1,2) + GameBoard(1,3) == -3
         win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(2,1) + GameBoard(2,2) + GameBoard(2,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(3,1) + GameBoard(3,2) + GameBoard(3,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,1) + GameBoard(3,1) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,2) + GameBoard(2,2) + GameBoard(3,2) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,3) + GameBoard(3,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,2) + GameBoard(3,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,2) + GameBoard(3,1) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    else
    end
    
    
  %User's Third Move
  
  
    X = input('Make your move, pick a number 3-11 on the board: ');
switch (X)
    case 3
      GameBoard(1,1)=0;
    case 4 
        GameBoard(1,2)=0;
    case 5 
        GameBoard(1,3)=0;
    case 6 
        GameBoard(2,1)=0;
    case 7
        GameBoard(2,2)=0;
    case 8
        GameBoard(2,3)=0;
    case 9
        GameBoard(3,1)=0;
    case 10 
        GameBoard(3,2)=0;
    case 11
        GameBoard(3,3)=0;
    otherwise
     fprintf('that is not a valid move\n')
     
end

GameBoard

%this code will execute if the user has won but if not it will continue on
%to the CPU's next move 
%if you choose to press 1 it will close matlab so if you do not want matlab
%to close it do not press 1
    

 if  GameBoard(1,1) + GameBoard(1,2) + GameBoard(1,3) == 0
     win = input('You won! Press 1 to returnthe game: ')
               return
    elseif GameBoard(2,1) + GameBoard(2,2) + GameBoard(2,3) == 0
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(3,1) + GameBoard(3,2) + GameBoard(3,3) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,1) + GameBoard(3,1) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,2) + GameBoard(2,2) + GameBoard(3,2) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,3) + GameBoard(3,3) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,2) + GameBoard(3,3) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,2) + GameBoard(3,1) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return           
    else 
 end
    
 
 %CPU's Foruth Move
 
 fprintf('computer move')

 %find available spots and eliminate previous moves from CPU options
CompMove = find(GameBoard >=3);
CompTurn = CompMove(randperm(length(CompMove),1))

switch(CompTurn)
     case 1
      GameBoard(1,1)= -1;
    case 2 
        GameBoard(2,1)= -1;
    case 3 
        GameBoard(3,1)= -1;
    case 4 
        GameBoard(1,2)= -1;
    case 5
        GameBoard(2,2)= -1;
    case 6
        GameBoard(3,2)= -1;
    case 7
        GameBoard(1,3)= -1;
    case 8 
        GameBoard(2,3)= -1;
    case 9
        GameBoard(3,3)= -1;
end 

GameBoard

%Check for a CPU win 
%if you choose to press 1 it will close matlab so if you do not want matlab
%to close it do not press 1

   if  GameBoard(1,1) + GameBoard(1,2) + GameBoard(1,3) == -3
         win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(2,1) + GameBoard(2,2) + GameBoard(2,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(3,1) + GameBoard(3,2) + GameBoard(3,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,1) + GameBoard(3,1) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,2) + GameBoard(2,2) + GameBoard(3,2) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,3) + GameBoard(3,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,2) + GameBoard(3,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,2) + GameBoard(3,1) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    else
    end
    
    
  
  %User's Fourth Move
  
  
    X = input('Make your move, pick a number 3-11 on the board: ');
switch (X)
    case 3
      GameBoard(1,1)=0;
    case 4 
        GameBoard(1,2)=0;
    case 5 
        GameBoard(1,3)=0;
    case 6 
        GameBoard(2,1)=0;
    case 7
        GameBoard(2,2)=0;
    case 8
        GameBoard(2,3)=0;
    case 9
        GameBoard(3,1)=0;
    case 10 
        GameBoard(3,2)=0;
    case 11
        GameBoard(3,3)=0;
    otherwise
     fprintf('that is not a valid move\n')
     
end

GameBoard

%Check for a user win 
%if you choose to press 1 it will close matlab so if you do not want matlab
%to close it do not press 1

  if  GameBoard(1,1) + GameBoard(1,2) + GameBoard(1,3) == 0
     win = input('You won! Press 1 to returnthe game: ')
               return
    elseif GameBoard(2,1) + GameBoard(2,2) + GameBoard(2,3) == 0
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(3,1) + GameBoard(3,2) + GameBoard(3,3) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,1) + GameBoard(3,1) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,2) + GameBoard(2,2) + GameBoard(3,2) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,3) + GameBoard(3,3) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,2) + GameBoard(3,3) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,2) + GameBoard(3,1) == 0 
        win = input('You won! Press 1 to quit the game: ')
               return           
    else 
 end
 
 
 %CPU fifth move (last move of the game)
 
  fprintf('computer move')

%find available spots and eliminate previous moves from CPU options
CompMove = find(GameBoard >=3);
CompTurn = CompMove(randperm(length(CompMove),1))

switch(CompTurn)
     case 1
      GameBoard(1,1)= -1;
    case 2 
        GameBoard(2,1)= -1;
    case 3 
        GameBoard(3,1)= -1;
    case 4 
        GameBoard(1,2)= -1;
    case 5
        GameBoard(2,2)= -1;
    case 6
        GameBoard(3,2)= -1;
    case 7
        GameBoard(1,3)= -1;
    case 8 
        GameBoard(2,3)= -1;
    case 9
        GameBoard(3,3)= -1;
end 
GameBoard

%Check for a CPU win. If not the game ends in a tie 
%if you choose to press 1 it will close matlab so if you do not want matlab
%to close it do not press 1rt

   if  GameBoard(1,1) + GameBoard(1,2) + GameBoard(1,3) == -3
         win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(2,1) + GameBoard(2,2) + GameBoard(2,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(3,1) + GameBoard(3,2) + GameBoard(3,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,1) + GameBoard(3,1) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,2) + GameBoard(2,2) + GameBoard(3,2) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,3) + GameBoard(3,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,1) + GameBoard(2,2) + GameBoard(3,3) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
    elseif GameBoard(1,3) + GameBoard(2,2) + GameBoard(3,1) == -3 
        win = input('You lost! Press 1 to quit the game\n: ')
               return
   else tie = input('The game ends in a tie! Press 1 to quit: ')
    end
    
  
