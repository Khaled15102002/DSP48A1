module REG_MUX(in, CLK, RST, CE, out);
localparam SYNC = 0, ASYNC = 1;
parameter WIDTH = 18;
parameter RSTTYPE = SYNC, REG = 1;
input CLK, RST, CE;
input [WIDTH-1:0] in;
reg [WIDTH-1:0] in_reg;
output reg [WIDTH-1:0] out;
generate
    if(RSTTYPE==SYNC)begin
always @(posedge CLK) begin
    if(RST)
    in_reg<=0;
    else begin
    if(CE)
    in_reg<=in;
    end
end
always@(*)begin
    case(REG)
    1: out=in_reg;
    default:out=in;
    endcase
end
    end
    if(RSTTYPE==ASYNC)begin
always @(posedge CLK or posedge RST) begin
    if(RST)
    in_reg<=0;
    else begin
    if(CE)
    in_reg<=in;
    end
end
always@(*)begin
    case(REG)
    1:out=in_reg;
    default:out=in;
    endcase
end
    end
endgenerate
endmodule

