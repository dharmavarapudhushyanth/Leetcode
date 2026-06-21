999. Available Captures for Rook

  You are given an 8 x 8 matrix representing a chessboard. There is exactly one white rook represented by 'R', some number of white bishops 'B', and some number of black pawns 'p'. Empty squares are represented by '.'.

A rook can move any number of squares horizontally or vertically (up, down, left, right) until it reaches another piece or the edge of the board. A rook is attacking a pawn if it can move to the pawn's square in one move.

Note: A rook cannot move through other pieces, such as bishops or pawns. This means a rook cannot attack a pawn if there is another piece blocking the path.

Return the number of pawns the white rook is attacking.

  module tb;
  
  string arr[8][8];
  int count = 0;
  
  initial begin 
    int r, c;
    arr = '{
      '{".",".",".",".",".",".",".","."},
      '{".",".",".","p",".",".",".","."},
      '{".",".",".","R",".",".",".","p"},
      '{".",".",".",".",".",".",".","."},
      '{".",".",".",".",".",".",".","."},
      '{".",".",".","p",".",".",".","."},
      '{".",".",".",".",".",".",".","."},
      '{".",".",".",".",".",".",".","."}
    };
    
    // cheking rook
    
    foreach(arr[i]) begin
      foreach(arr[i][j])begin
        
       
        if(arr[i][j] == "R") begin
          // here i is the row , and j is the column.
          // checking for the up rows --- for that we need to decremnent the row, it goes up
          
          // rook can goes left , right, up ,down
            r = i-1;
            c = j;
          
          //up
        while(r >= 0 )begin
          if(arr[r][c] == "p") begin 
              count++;
              break;
          end
          if(arr[r][c] == "B")
              break;
          r--;
            // failing condition , at the board.
          end
        
        //down
        r = i+1;
        c = j;
        while(r < 8) begin 
          if(arr[r][c] == "p")begin 
              count++;
              break;
          end
          if(arr[r][c] == "B")
              break;
         
            r++;
        end
        
        //left 
        r = i;
        c = j-1;
        
        while(c >= 0) begin 
          if(arr[r][c] == "p") begin
              count++;
              break;
          end
          if(arr[r][c] == "B")
              break;
            c--;
            // failing condition , at the board.
          end
        
        //right
        r = i;
        c = j+1;
        while( c < 8) begin 
          if(arr[r][c] == "p") begin 
              count++;
              break;
          end
          if(arr[r][c] == "B")
              break;
            c++;
            // failing condition , at the board.
          end 
        end
        
        
      end
    end
  $display("value of count is %d",count);
  end
endmodule
