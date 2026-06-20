module valid_word_square;
  
  string arr[][];
  bit valid;
  
  initial begin
    arr = new[4];
    foreach(arr[i])
      arr[i] = new[4];
    
    arr= '{
    
      '{"a","b","c","d"},
      '{"b","n","r","t"},
      '{"c","r","m","y"},
      '{"d","t","y","e"}
    
    };
    
    valid = 1;
    for(int i = 0; i< arr.size(); i++) begin
    
      for(int j =0; j<arr[i].size(); j++) begin
        if(arr[i][j] != arr[j][i])
         /* $display("it is not valid_word_square");
        else
          $display("valid word square");
      */
          begin
            $display("error from the matrix %s != %s",arr[i][j] , arr[j][i]);
          valid = 0;
        break;
          end
        
        
        
          
      end
      if(!valid)
          break;
      
    end
    
    if(valid)
      $display("this is a valid word square");
    else
      $display("this is not a valid word sequence");
  
  end
  
  
endmodule
