/*Given an m x n matrix of distinct numbers, return all lucky numbers in the matrix in any order.

A lucky number is an element of the matrix such that it is the minimum element in its row and maximum in its column.

 

Example 1:

Input: matrix = [[3,7,8],[9,11,13],[15,16,17]]
Output: [15]
Explanation: 15 is the only lucky number since it is the minimum in its row and the maximum in its column.
Example 2:

Input: matrix = [[1,10,4,2],[9,3,8,7],[15,16,17,12]]
Output: [12]
Explanation: 12 is the only lucky number since it is the minimum in its row and the maximum in its column.
Example 3:

Input: matrix = [[7,8],[1,2]]
Output: [7]
Explanation: 7 is the only lucky number since it is the minimum in its row and the maximum in its column.
*/



module tb;
  
  int arr[3][4] = '{
    '{1,10,4,2},
    '{9,3,8,7},
    '{15,16,17,12}
  };
  int min = 0;
  int m = 0;
  int k = 0;
  int max = 0;
  initial begin 
    
    for(int i =0; i < $size(arr); i++) begin 
      min  = arr[i][0];
      m = i;
      for(int j =0; j <$size(arr[i]); j++) begin
        

        if(arr[i][j] < min) begin
          min = arr[i][j];
           m = i;
           k = j;
      end
      // here i am checking for the max value , in the next step i am checking for the min value and the max value if they are having the same number then it is lucky number .
        
        // in a row , we need to find the minimum number , then check the same number is max in colomn.
      foreach(arr[l]) begin
        max = arr[0][l];
        if(arr[l][j] > max)
          max = arr[l][j];
      end
        
      
      
      end
      if(min == max) begin 
        $display("lucky number is %d",min);
          
        end
    end
  end
endmodule
