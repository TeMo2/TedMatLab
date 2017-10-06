%Theodore Morrison 

%Assignment 4 Tic Tac Toe with Loops 

%October 6

%This code is built to play tic tac toe
% 0 = O's and -1 = X's
% the O's(or 0) are assigned to the user and the X's( or -1) are assigned to
% the CPU opponent 

%Welcome message 
fprintf('Tic-Tac-Toe!\nMay the odds be in your favor!\n');
pause(3)
GameTime = input('Would you like to play Tic Tac Toe? Press 1 to play: ');
pause(3)

fprintf('CPU will be -1 and you will be assigned "0" on the playing board\n')

%Show gameboard
GameBoard = [3,6,9;4,7,10;5,8,11];

%The following code is written to give the computer to make the first move

fprintf('The CPU will move first')



while GameTime == 1 
    
    GameBoard
   %look for spots already taken by the user  
    UserMove = find(GameBoard == 0);
% This loop will run 9 times for the 9 possible moves in tic tac toe 
    for i = (1:9)
   %Computer generate random move on the board   
        CompMove = find(GameBoard ~= 0 & GameBoard ~= -1);
        CompTurn = CompMove(randperm(length(CompMove),1));
        if CompTurn ~= UserMove
            GameBoard(CompTurn)= -1;
        end 
                    
            
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
        GameBoard(3,1)= -1;
    case 8 
        GameBoard(2,3)= -1;
    case 9
        GameBoard(3,3)= -1;
     end 
         GameBoard       
    
    %Check the  GameBoard for a CPU win 
   
    if  GameBoard(1,1) + GameBoard(1,2) + GameBoard(1,3) == -3
         CPUwin = input('You lost! Press Enter: ');
               break
    elseif GameBoard(2,1) + GameBoard(2,2) + GameBoard(2,3) == -3 
        CPUwin = input('You lost! Press Enter: ');
               break
    elseif GameBoard(3,1) + GameBoard(3,2) + GameBoard(3,3) == -3 
        CPUwin = input('You lost! Press Enter: ');
               break
    elseif GameBoard(1,1) + GameBoard(2,1) + GameBoard(3,1) == -3 
        CPUwin = input('You lost! Press Enter: ');
               break
    elseif GameBoard(1,2) + GameBoard(2,2) + GameBoard(3,2) == -3 
        CPUwin = input('You lost! Press Enter: ');
               break
    elseif GameBoard(1,3) + GameBoard(2,3) + GameBoard(3,3) == -3 
        CPUwin = input('You lost! Press Enter: ');
               break
    elseif GameBoard(1,1) + GameBoard(2,2) + GameBoard(3,3) == -3 
        CPUwin = input('You lost! Press Enter: ');
               break
    elseif GameBoard(1,3) + GameBoard(2,2) + GameBoard(3,1) == -3 
        CPUwin = input('You lost! Press Enter: ');
               break
    else  
    end 
    
    %find spots on the board that the CPU has already taken
   CompPlay = find(GameBoard == -1);
  %stop user from taking an unavailable spot, prompt them pick an available
  %spot
   
  playermove = input('Make your move, pick a number 1-9 the board starts at 1 in the upper left and counts downward in the columns: ')
    while CompPlay == playermove 
        disp('that move is not valid choose an available space')
        playermove = input('Make your move, pick a number 1-9 the board starts at 1 in the upper left and counts downward in the columns: ')     
    end 
        
           
         switch (playermove)
            case 1
                GameBoard(1,1)=0;
            case 2 
                GameBoard(2,1)=0;
            case 3 
                 GameBoard(3,1)=0;
            case 4 
                GameBoard(1,2)=0;
            case 5
                GameBoard(2,2)=0;
            case 6
                GameBoard(3,2)=0;
            case 7
                GameBoard(1,3)=0;
            case 8
                GameBoard(2,3)=0;
            case 9
                GameBoard(3,3)=0;
        end    
         GameBoard
         
   %check for a user win     
    if  GameBoard(1,1) + GameBoard(1,2) + GameBoard(1,3) == 0
     userwin = input('You won! Press Enter: ')
               break
    elseif GameBoard(2,1) + GameBoard(2,2) + GameBoard(2,3) == 0
        userwin = input('You won! Press Enter: ')
               break
    elseif GameBoard(3,1) + GameBoard(3,2) + GameBoard(3,3) == 0 
        userwin = input('You won! Press Enter: ')
               break
    elseif GameBoard(1,1) + GameBoard(2,1) + GameBoard(3,1) == 0 
        userwin = input('You won! Press Enter: ')
               break
    elseif GameBoard(1,2) + GameBoard(2,2) + GameBoard(3,2) == 0 
        userwin = input('You won! Press Enter: ')
               break
    elseif GameBoard(1,3) + GameBoard(2,3) + GameBoard(3,3) == 0 
        userwin = input('You won! Press Enter: ')
               break
    elseif GameBoard(1,1) + GameBoard(2,2) + GameBoard(3,3) == 0 
        userwin = input('You won! Press Enter: ')
               break
    elseif GameBoard(1,3) + GameBoard(2,2) + GameBoard(3,1) == 0 
        userwin = input('You won! Press Enter: ')
               break           
    else 
    end
    
     GameBoard
     
    end 
    
    if sum(GameBoard) == -4 
        disp('Tie Game!')
        break 
    end 
    
    
GameTime = input('Would you like to play again? Press 1. If not be lame and press 2:  ')
if (GameTime == 1)
    disp('Another round!')
    clear workspace 
    run TedTicTacToeLoops.m
else (GameTime == 2)
    disp('You are no fun!')
    break
end 

   
    
end 

