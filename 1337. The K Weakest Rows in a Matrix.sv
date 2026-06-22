You are given an m x n binary matrix mat of 1's (representing soldiers) and 0's (representing civilians). The soldiers are positioned in front of the civilians. That is, all the 1's will appear to the left of all the 0's in each row.

A row i is weaker than a row j if one of the following is true:

The number of soldiers in row i is less than the number of soldiers in row j.
Both rows have the same number of soldiers and i < j.
Return the indices of the k weakest rows in the matrix ordered from weakest to strongest.

module tb;
  int arr[4][4] = '{
    '{1,0,0,0},
    '{1,1,1,1},
    '{1,0,0,0},
    '{1,0,0,0}
  };
  int temp[$];
  int temp1[$];
  int fi[$];
  int count;
  int k = 2;
  int kth[$];
  initial begin 
    
    
    // i am creating two for loops to identify 
    for(int i=0; i<$size(arr); i++) begin
      count = 0;
      for(int j=0; j<$size(arr[i]); j++) begin
        
        if(arr[i][j] == 1) 
          count++;
        
      end
       temp.push_back(count);
    end
    
    // here we need to write array logic , from the above logic we can get counteones
    
    // lets create another array 
    
   // copying temp to the final 
    temp1 = temp;
    temp1.sort();
    
    foreach(temp1[i]) begin 
      foreach(temp[j]) begin
        if(temp1[i] == temp[j]) begin
          fi.push_back(j);
          temp[j] = -1; // mark as used (handles duplcates here )
          break;
        end
      end
    end
    
    for(int i =0; i < k; i++) begin 
      kth.push_back(fi[i]);
    end 
   
    $display("ones count = %p ",temp1);
    $display("weakest row indices = %p",fi);
    $display("kth elements %p",kth);
    
  end
endmodule

output :
# run -all
# ones count = '{1, 1, 1, 4} 
# weakest row indices = '{0, 2, 3, 1}
# kth elements '{0, 2}
# exit
# End time: 18:18:36 on Jun 22,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
End time: 18:18:36 on Jun 22,2026, Elapsed time: 0:00:02
