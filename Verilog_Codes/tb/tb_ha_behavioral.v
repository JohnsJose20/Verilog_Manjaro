module tb_ha_behavioral;
    reg a,b; wire sum,carry;
    ha_behavioral uut(a,b,sum,carry);
    initial begin
        $dumpfile("sim/ha_behavioral.vcd"); $dumpvars(0,tb_ha_behavioral);
        a=0;b=0;#10; a=0;b=1;#10; a=1;b=0;#10; a=1;b=1;#10;
        $finish;
    end
endmodule
