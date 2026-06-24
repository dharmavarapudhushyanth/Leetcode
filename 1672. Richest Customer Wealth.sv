/*
1672. Richest Customer Wealth

You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank. Return the wealth that the richest customer has.

A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

 

Example 1:

Input: accounts = [[1,2,3],[3,2,1]]
Output: 6
Explanation:
1st customer has wealth = 1 + 2 + 3 = 6
2nd customer has wealth = 3 + 2 + 1 = 6
Both customers are considered the richest with a wealth of 6 each, so return 6.
Example 2:

Input: accounts = [[1,5],[7,3],[3,5]]
Output: 10
Explanation: 
1st customer has wealth = 6
2nd customer has wealth = 10 
3rd customer has wealth = 8
The 2nd customer is the richest with a wealth of 10.
*/


module tb;
  int arr[3][3] = '{
    '{1,2,3},
    '{3,2,3},
    '{4,4,3}
  };
  int q[$];
  int sum;
  int max;
  int temp = 0;
  initial begin
    // which row has the highest value is considered as the richest customer wealth
    
    for(int i =0; i<$size(arr); i++) begin
        
      sum = 0;
      for(int j =0; j<$size(arr[i]); j++) begin 
        sum += arr[i][j];
        
      end
      q.push_back(sum);
    end
    // finding maximum number in a queue with index
    max = q[0];
    foreach(q[i]) begin 
      if(q[i] >= max) begin
        max = q[i];
        temp = i;
      end
    end
    
    $display("the %0d is the richest customer wealth of %0d",temp,q[temp]);
    
    
  end
endmodule

output:
run -all
# the 2 is the richest customer wealth of 11
# exit
