/*

2965. Find Missing and Repeated Values

You are given a 0-indexed 2D integer matrix grid of size n * n with values in the range [1, n2]. Each integer appears exactly once except a which appears twice and b which is missing. The task is to find the repeating and missing numbers a and b.

Return a 0-indexed integer array ans of size 2 where ans[0] equals to a and ans[1] equals to b.

 

Example 1:

Input: grid = [[1,3],[2,2]]
Output: [2,4]
Explanation: Number 2 is repeated and number 4 is missing so the answer is [2,4].
Example 2:

Input: grid = [[9,1,7],[8,9,2],[3,4,6]]
Output: [9,5]
Explanation: Number 9 is repeated and number 5 is missing so the answer is [9,5].




*/


module tb;
  int grid[3][3] = '{
    '{9,1,7},
    '{8,9,2},
    '{3,4,6}
  };
   // i would like to declare one temporary array to store each and every element in the matrix
  
  int arr[$];
  int result[$];
  int min = 0;
  int max = 0;
  int temp = 0;
  int temp1 = 0;
  
  // creating associative array.
  
  int freq [int];
  
  initial begin
    
    // corner cases ,
   // if($size(arr) >= $size(grid) * $size(grid[0])) begin
    
      for(int i =0; i < $size(grid); i++) begin 
      for(int j = 0; j < $size(grid[i]); j++) begin 
        arr.push_back(grid[i][j]);
      end
      // storing some temporary variables to capture 
       
    end
    
     $display("%p",arr);
    min = arr[0];
    max = arr[0];
    foreach(arr[i]) begin
      if(arr[i] < min)
        min = arr[i];
        if(arr[i] > max)
          max = arr[i];
      freq[arr[i]]++;
    end
    $display("min = %0d max = %0d", min, max);
    $display("freq = %p",freq); 
    
    // again for loop 
    for(int i = min; i <= max; i++)begin 
      if(freq.exists(i)) begin 
        if(freq[i] == 2)begin
          temp = i;
        
        end
        
      end
      else
        temp1 = i;
      
    end
    result.push_back(temp);
    result.push_back(temp1);
    
    $display("%p",result);
    	
  end
endmodule
