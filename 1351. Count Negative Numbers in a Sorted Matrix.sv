/*

1351. Count Negative Numbers in a Sorted Matrix


Given a m x n matrix grid which is sorted in non-increasing order both row-wise and column-wise, return the number of negative numbers in grid.

 

Example 1:

Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
Output: 8
Explanation: There are 8 negatives number in the matrix.
Example 2:

Input: grid = [[3,2],[1,0]]
Output: 0




*/



module tb;
  int arr[4][4] = '{
    '{4,3,2,-1},
    '{3,2,1,-1},
    '{1,1,-1,-2},
    {-1,-1,-2,-3}
  
  };
  
  initial begin
    int count = 0;
    for(int i = 0; i<$size(arr); i++) begin 
      for(int j=0; j<$size(arr[0]); j++) begin
        if(arr[i][j] < 0) 
          count++;
      end
    end
          $display("There are total of %d negative in this array",count);
  end
endmodule

output: 
run -all
# There are total of 8 negative in this array
# exit

