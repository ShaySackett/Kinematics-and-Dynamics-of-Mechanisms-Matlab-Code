%This program calculates Grashof condition given 4 link lengths in format
%[L1,L2,L3,L4]. Variables should be > 0
clc
%cases = [

%input a vector in form "[L1,L2,L3,L4]", where L1 = grounded link, L2 =
%input, L3 = coupler, and L4 = output
vector = input('User enter a comma-separated vector list with 4 elements: \n');  

if length(vector) ~= 4  %if length of given inputs not equal to 4
    disp('You need to input exactly 4 elements in the array')   
end

invalid = vector <= 0;  %if any given link lengths are <= 0, mark "1" in that links position of invalid variable
if sum(invalid) > 0     %if the sum of "invalid" variable is greater than 0, we know we have an invalid length  
    disp('Invalid number entered. Numbers less than or equal to zero \n are not valid link lengths')
end

grounded_link = vector(1); 
unsorted_vector = vector;
vector = sort(vector);  %sort "vector" in ascending order, shortest to longest
s = vector(1); l = vector(4); p = vector(2); q = vector(3);

if s + l < p + q
    if grounded_link == s
        disp('Grashof Double Crank')
    elseif unsorted_vector(2) == s
        disp('Grashof Crank Rocker')
    elseif unsorted_vector(3) == s
        disp('Grashof Double Rocker')
    end
elseif  s + l > p + q
    disp('Non-Grashof Triple Rocker')
elseif s + l == p + q
    disp('Special Case Grashof')
end
            
            
    
    
        
            
    
    

    


