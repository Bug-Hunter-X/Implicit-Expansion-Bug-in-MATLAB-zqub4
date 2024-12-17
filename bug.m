function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to implicit expansion.
% The bug arises when using implicit expansion with logical indexing and assignment.

  if input > 10
    result = zeros(3,3);  % Initialize a 3x3 matrix
    result(input > 10) = 1; % Implicit expansion that might lead to unexpected results 
  else
    result = 0;           % Default value if input is not > 10
  end
end

% Example Usage:
input1 = 12;
output1 = myFunction(input1);

input2 = 5;
output2 = myFunction(input2);