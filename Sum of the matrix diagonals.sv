/*
Given a square matrix mat, return the sum of the matrix diagonals.

Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.

 

Example 1:


Input: mat = [[1,2,3],
              [4,5,6],
              [7,8,9]]
Output: 25
Explanation: Diagonals sum: 1 + 5 + 9 + 3 + 7 = 25
Notice that element mat[1][1] = 5 is counted only once.
*/

module tb;
  int arr[3][3] = '{
    '{1,2,3},
    '{4,5,6},
    '{7,8,9}
  };
  int mid = 0;
  int left_sum = 0;
  int right_sum = 0;
  int sum = 0;
  
  initial begin 
   
    // starting with the loop.
    for(int i=0; i<$size(arr); i++) begin 
      left_sum = left_sum + arr[i][i];
      if(i == $size(arr)/2) begin
      continue;
      end
      else
      right_sum = right_sum + arr[i][2-i];
    end
    sum = left_sum + right_sum;
    $display("the final value of sum is %d",sum);
    
  end
endmodule
