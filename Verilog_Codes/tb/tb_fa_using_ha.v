module tb_fa_using_ha;
    reg a,b,cin; wire sum,cout;
    fa_using_ha uut(a,b,cin,sum,cout);
    initial begin
        $dumpfile("sim/fa_using_ha.vcd"); $dumpvars(0,tb_fa_using_ha);
        a=0;b=0;cin=0;#10; a=0;b=0;cin=1;#10;
        a=0;b=1;cin=0;#10; a=0;b=1;cin=1;#10;
        a=1;b=0;cin=0;#10; a=1;b=0;cin=1;#10;
        a=1;b=1;cin=0;#10; a=1;b=1;cin=1;#10;
        $finish;
    end
endmodule
