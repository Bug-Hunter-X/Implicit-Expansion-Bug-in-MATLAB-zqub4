function result = myFunctionSolution(input)
% This function provides a solution to the implicit expansion bug.
% It avoids the unexpected results by explicitly handling the dimensions.

  if input > 10
    result = zeros(3,3);
    index = find(input > 10);
    result(index) = 1;  %Explicit indexing avoids the unexpected implicit expansion behavior
  else
    result = 0;
  end
end

% Example Usage:
input1 = 12;
output1 = myFunctionSolution(input1);

input2 = 5;
output2 = myFunctionSolution(input2); 