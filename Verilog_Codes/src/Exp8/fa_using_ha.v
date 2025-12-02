// Full Adder using Half Adders
module fa_using_ha(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    wire s1, c1, c2;
    ha_dataflow HA1(a, b, s1, c1);
    ha_dataflow HA2(s1, cin, sum, c2);
    or(cout, c1, c2);
endmodule
