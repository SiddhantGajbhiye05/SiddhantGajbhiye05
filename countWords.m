% This fuction calculates the number of words in a string provided by user
% It assumes that words in the string are separated by exactly one space
% and every portion of the string between 2 spaces is a word.It outputs 0
% value if any empty string is given
function countWords
x = input('Enter a string: ');  
p = strlength(x);
count = 0;
if p == 0
    disp '0' % for empty string
else
    for i = 1:p
       if x(i) == ' '
           count = count + 1;% increases the word count by 1 for every space it comes across
       end
    end
    count = count + 1;
disp(count)
    
end

           
           
        




 
   
 
