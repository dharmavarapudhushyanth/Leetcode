// transpose matrix 

module tb;
  int arr[][];
  int arr1[3][3];
  
  initial begin
    arr = new[3];
    foreach(arr[i])
      arr[i] = new[3];
    arr = '{
      '{1,2,3},
      '{4,5,6},
      '{7,8,9}
    };
    
    for(int i=0; i<arr.size(); i++) begin
      for(int j = 0; j<arr[i].size(); j++)begin
        arr1[j][i] = arr[i][j];
       // $write("%d",arr1[j][i]);
    end
      //$display("");
  end
    
 
    
    foreach(arr[i]) begin 
      foreach(arr[i][j])begin 
        $write("%d",arr1[i][j]);
    end
      $display("");
    end
  end
endmodule
