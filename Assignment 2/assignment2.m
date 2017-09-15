%Theodore Morrison 

%Due: September 12

%Assignment #2, Chapter 1, Chapter 2, Chapter 3 

% Chapter 1 Exercises 

% 1.)
Cu = 63.55;

%2.)
myage = 24
myage - 2
myage + 1

%3.)
namelengthmax

%4). 
myweight = 195;
ozweight = (myweight*16);
who 
whos

%5.)
intmin uint32
intmax uint32
intmin uint64 
intmax uint64

%6.)
dova = 6.8;
int32(dova)
newdova = 7; 

%11.)
pounds = 145;
kilos = (pounds/2.2);

%12.)
ftemp = 75;
ctemp = ((75-32)*5/9);

%13.)
inches = (69);
cm = (inches*2.54);

%14.)


%15.)
R1=2
R2=3
R3=4
RT= (1/((1/R1)+(1/R2)+(1/R3)))

%22.) uppercase letters

%24.)
'b' >='c'-1
3 == 2+1
(3==2)+1
xor(5<6,8>4)

%25.)


%26.) 
3*10^5 == 3e5

%27.)
log10(10000)== 5 

%%Chapter 2 Exercises 

%1.)
x= [2:7]
y = linspace(1.1,1.7,4)
z = linspace(8,2,4)

%2.)
vec = linspace(0,(2*pi),50)

%3.)
linspace(2,3,6)

%4.)
linspace(-5,-1,5)
linspace(5,9,3)
linspace(8,4,3)

%6.)
pvec = -1:.5:1, trans = pvec
trans2 = trans'

%7.)
newvec = 1:20
newvec(1:2:end)

%8.)
mat2 = [7:10; linspace(12,6,4)]
mat2(1,3)
mat2(2,1:4)
mat2(1:2,1:2)

%9.)
randi(2,4)

%10.)
mat(1,:) = 1:4

%12.)
rows= randi([1 5],1)
cols = randi([1 5],1)
zeros(rows,cols)

%23.)
sum(linspace(3,11,5))

%26.)
top = 3:2:9
bottom = 1:4
fracs = top./bottom
sum(fracs)

%30.)
colvec = randi([-10 10],5,1)
(colvec-3)
sum(colvec(:)>=0)
abs(colvec)
max(colvec)

%31.)
bigmat= randi(100,3,5)
max(bigmat)
max(bigmat')
max(max(bigmat))

%%Chapter 3 Exercises

%1.)
Ro = 3 
Ri = 2
sphvol=((4*pi)/3)*(Ro^3-Ri^3)
%This code calcuates the volume 
%of a hollow sphere

%4.)
vec = input('Enter a vector:')

%6.)

%w/o specifying field 
% width 10 and 4 decimal places: rounds 4 decimal places 
%width 10 and 2 decimal places: rounds to 2 decimal places 
% width 6 and decimal 4 rounds to 2 decimal places
%width 2 and 4 decimal places rounds to 4 decimal places

%8.)
A = input('Enter the flow in m^3/s: ')
fprintf('A flow rate of %.3f meters per sec\nis equivalent to %.3f feet per sec\n', A, A/.028)


%13.)
C = input ('X, Y, and Z in a vector are equal to: ');
U = v./sqrt(C(1)^2 + C(2)^2 + C(3)^2);
frprint('the unit vector <%.2f, %.2f, %.2F> is <%.2f, %.2f, %.2f>\n.', C(1), C(2),C(3), U(1), U(2), U(3))