/*
Input: original = [1,2,3,4], m = 2, n = 2
Output: [[1,2],[3,4]]
Explanation: The constructed 2D array should contain 2 rows and 2 columns.
The first group of n=2 elements in original, [1,2], becomes the first row in the constructed 2D array.
The second group of n=2 elements in original, [3,4], becomes the second row in the constructed 2D array.

*/

module tb;
  int org[4] = '{1,2,3,4};
  
  int m = 2;
  int n = 2;
  int arr[2][2];
  int k;
  initial begin
    
    // corner case , if length of the original is == to the 2d then it can change to. the 2d.
    if(m*n != $size(org)) begin
      $display("It cannot form 2day");
      //break;
    end
    else begin
      k =0;
      for(int i = 0; i < m; i++) begin 
        for(int j = 0; j < n; j++) begin 
          arr[i][j] = org[k++];
          $write("%d",arr[i][j]);
        end
        $display(" ");
      end
      
    end
    
      
    
      
  end
endmodule
