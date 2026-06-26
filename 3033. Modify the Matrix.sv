/*

3033. Modify the Matrix


Given a 0-indexed m x n integer matrix matrix, create a new 0-indexed matrix called answer. Make answer equal to matrix, then replace each element with the value -1 with the maximum element in its respective column.

Return the matrix answer.





Input: matrix = [[1,2,-1],[4,-1,6],[7,8,9]]
Output: [[1,2,9],[4,8,6],[7,8,9]]
Explanation: The diagram above shows the elements that are changed (in blue).
- We replace the value in the cell [1][1] with the maximum value in the column 1, that is 8.
- We replace the value in the cell [0][2] with the maximum value in the column 2, that is 9.
*/


module tb;
  
  int arr[3][3] = '{
    '{1,2,-1},
    '{4,-1,6},
    '{7,8,9}
  };
   int max = 0;
  
  initial begin 
    for(int i = 0; i<$size(arr); i++) begin
      for(int j = 0; j < $size(arr[i]); j++) begin
        
        if(arr[i][j] < 0)begin 
          max = arr[i][i];
          foreach(arr[k]) begin 
            if(arr[k][j] > max)
              max = arr[k][j];
          end
          arr[i][j] = max;
        end
        $write("%d",arr[i][j]);
      end
      $display("");
    end
    
    
  end
endmodule


output:
# run -all
#           1          2          9
#           4          8          6
#           7          8          9
# exit
