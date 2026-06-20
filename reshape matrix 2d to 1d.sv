// Code your design here
/*



n MATLAB, there is a handy function called reshape which can reshape an m x n matrix into a new one with a different size r x c keeping its original data.

You are given an m x n matrix mat and two integers r and c representing the number of rows and the number of columns of the wanted reshaped matrix.

The reshaped matrix should be filled with all the elements of the original matrix in the same row-traversing order as they were.

If the reshape operation with given parameters is possible and legal, output the new reshaped matrix; Otherwise, output the original matrix.

 

Example 1:


Input: mat = [[1,2],[3,4]], r = 1, c = 4
Output: [[1,2,3,4]]
Example 2:


Input: mat = [[1,2],[3,4]], r = 2, c = 4
Output: [[1,2],[3,4]]

*/








module tb;

  int mat[2][2] = '{
    '{1,2},
    '{3,4}
  };

  int m, n;
  int r = 1, c = 4;
  int result[][];
  int idx = 0;
  int row, col;
  initial begin

    m = $size(mat);
    n = $size(mat[0]);

    

    if (m * n != r * c) begin
      $error("m x n != r x c");
    end
    else begin

      // allocate result
      result = new[r];
      foreach (result[i])
        result[i] = new[c];

      for (int i = 0; i < m; i++) begin
        for (int j = 0; j < n; j++) begin

           row = idx / c;
           col = idx % c;

          result[row][col] = mat[i][j];

          idx++;

        end
      end

    end

    $display("reshaped matrix = %p", result);

  end

endmodule
