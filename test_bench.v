module test_bench();
reg [17:0] A, B, BCIN;
reg [17:0] D;
reg [47:0] C, PCIN;
reg CARRYIN, CLK, CEA, CEB, CEC, CECARRYIN, CED, CEM, CEOPMODE, CEP;
reg RSTA, RSTB, RSTC, RSTCARRYIN, RSTD, RSTM, RSTOPMODE, RSTP;
reg [7:0] OPMODE;
wire [35:0] M;
wire [47:0] P, PCOUT;
wire CARRYOUT, CARRYOUTF;
wire [17:0] BCOUT;
DSP x1(A, B, C, D, CARRYIN, M, P, CARRYOUT, CARRYOUTF, CLK, OPMODE, BCIN, 
CEA, CEB, CEC, CECARRYIN, CED, CEM, CEOPMODE, CEP, RSTA, RSTB, RSTC, RSTCARRYIN, RSTD, RSTM, RSTOPMODE, RSTP, BCOUT, PCIN, PCOUT);
initial begin
    CLK=0;
    forever begin
        #1CLK=~CLK;
    end
end
initial begin
    RSTA = 1;
    RSTB = 1;
    RSTC = 1;
    RSTCARRYIN = 1;
    RSTD = 1;
    RSTM = 1 ;
    RSTOPMODE = 1;
    RSTP = 1;
    A = $random;
    B = $random; 
    C = $random;
    D = $random;
    OPMODE = $random;
    PCIN = $random;
    BCIN = $random;
    CARRYIN = $random;
    CEA = $random;
    CEB = $random;
    CEC = $random;
    CECARRYIN = $random;
    CED = $random;
    CEM = $random;
    CEOPMODE = $random;
    CEP = $random;
    @(negedge CLK);
    if(M!=0 || P!=0 || PCOUT!=0 || CARRYOUT!=0 || CARRYOUTF!=0 || BCOUT!=0)begin
        $display("Error");
        $stop;
    end
    RSTA = 0;
    RSTB = 0;
    RSTC = 0;
    RSTCARRYIN = 0;
    RSTD = 0;
    RSTM = 0 ;
    RSTOPMODE = 0;
    RSTP = 0;
    CEA = 1;
    CEB = 1;
    CEC = 1;
    CECARRYIN = 1;
    CED = 1;
    CEM = 1;
    CEOPMODE = 1;
    CEP = 1;

    OPMODE = 8'b11011101;
    A = 20;
    B = 10;
    C = 350;
    D = 25;
    BCIN = $random; 
    PCIN = $random;
    CARRYIN = $random;
    repeat(4)@(negedge CLK);
    if(BCOUT!=18'hf || M!=36'h12c || PCOUT!=48'h32 || P!=48'h32 || CARRYOUTF!=0 || CARRYOUT!=0)begin
        $display("Error");
        $stop;
    end


    OPMODE = 8'b00010000;
    A = 20;
    B = 10;
    C = 350;
    D = 25;
    BCIN = $random; 
    PCIN = $random;
    CARRYIN = $random;
    repeat(3)@(negedge CLK);
    if(BCOUT!=18'h23 || M!=36'h2bc || PCOUT!=48'h0 || P!=48'h0 || CARRYOUTF!=0 || CARRYOUT!=0)begin
        $display("Error");
        $stop;
    end

    OPMODE = 8'b00001010;
    A = 20;
    B = 10;
    C = 350;
    D = 25;
    BCIN = $random; 
    PCIN = $random;
    CARRYIN = $random;
    repeat(3)@(negedge CLK);
    if(BCOUT!=18'ha || M!=36'hc8 || PCOUT!=48'h0 || P!=48'h0 || CARRYOUTF!=0 || CARRYOUT!=0)begin
        $display("Error");
        $stop;
    end

    OPMODE = 8'b10100111;
    A = 5;
    B = 6;
    C = 350;
    D = 25;
    BCIN = $random; 
    PCIN = 3000;
    CARRYIN = $random;
    repeat(3)@(negedge CLK);
    if(BCOUT!=18'h6 || M!=36'h1e || PCOUT!=48'hfe6fffec0bb1 || P!=48'hfe6fffec0bb1 || CARRYOUTF!=1 || CARRYOUT!=1)begin
        $display("Error");
        $stop;
    end

    $stop;
end
endmodule

