
module Controller(ldA, ldB, sel1, sel2, sel_in, done, clk, lt, gt, eq, start);
  input clk, lt, gt, eq, start;
  output reg ldA, ldB, sel1, sel2, sel_in, done;
  

  reg [5:0] state;
  
  // One hot enconding of the states
  parameter S0 = 6'b000001;
  parameter S1 = 6'b000010;
  parameter S2 = 6'b000100;
  parameter S3 = 6'b001000;
  parameter S4 = 6'b010000;
  parameter S5 = 6'b100000;
  
  always @(posedge clk)
    begin
    	case (state)
          S0: if (start) state <= S1;
          
          S1: state <= S2;
          
          S2: if (eq) state <= S5;
          		else if (lt) state <= S3;
          		else if (gt) state <= S4;
          
          S3: if (eq) state <= S5;
          		else if (lt) state <= S3;
          		else if (gt) state <= S4;
          
          S4: if (eq) state <= S5;
          		else if (lt) state <= S3;
          		else if (gt) state <= S4;
          
          S5: state <= S5;
          
          default: state <= S0;
        endcase
      end
      
  
  always @(*) begin

    // Initializations
    sel_in = 0; sel1 = 0; sel2 = 0; ldA = 0; ldB = 0; done = 0;
    
    case (state)
      // Loads data_in input into the A
      S0: begin
        sel_in = 1; ldA = 1; ldB = 0;
      end
      
      // Loads data_in input into the B
      S1: begin
        sel_in = 1; 
        ldA = 0; 
        ldB = 1;
      end
      
      // Compares the inputs until becomes equal
      S2: begin
        // If A == B, set done = 1
        if(eq) begin
          	done = 1;
          	ldA = 0;
			ldB = 0;
        end
        
        // If A < B, B = B-A
        else if (lt) begin
          	sel1 = 1; sel2 = 0; sel_in = 0;
          	ldA = 0; ldB = 1;
        end
        
        // If A > B, A = A-B
        else if (gt) begin
          	sel1 = 0; sel2 = 1; sel_in = 0;
          	ldA = 1; ldB = 0;
        end
      end
      
      S3: begin
        if(eq) begin
          done = 1;
          ldA = 0;
			ldB = 0;
        end
        
        else if (lt) begin
          	sel1 = 1; sel2 = 0; sel_in = 0;
          	ldA = 0; ldB = 1;
        end
        
        else if (gt) begin
          	sel1 = 0; sel2 = 1; sel_in = 0;
          	ldA = 1; ldB = 0;
        end
      end
      
      S4: begin
        if(eq) begin
          done = 1;
          ldA = 0;
			ldB = 0;
        end
        
        else if (lt) begin
          	sel1 = 1; sel2 = 0; sel_in = 0;
          	ldA = 0; ldB = 1;
        end
        
        else if (gt) begin
          	sel1 = 0; sel2 = 1; sel_in = 0;
          	ldA = 1; ldB = 0;
        end
      end
      
      // When A = B, set the done = 1
      S5: begin
        done = 1; sel1 = 0; sel2 = 0; ldA = 0; ldB = 0;
      end
      
      default: begin
      	ldA = 0; ldB = 0;    
      end
      
    endcase
  end
  
endmodule
