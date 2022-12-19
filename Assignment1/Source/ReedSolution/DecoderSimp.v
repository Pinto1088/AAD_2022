/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */
module DIG_Add
#(
    parameter Bits = 1
)
(
    input [(Bits-1):0] a,
    input [(Bits-1):0] b,
    input c_i,
    output [(Bits - 1):0] s,
    output c_o
);
   wire [Bits:0] temp;

   assign temp = a + b + c_i;
   assign s = temp [(Bits-1):0];
   assign c_o = temp[Bits];
endmodule



module DecoderSimp (
  input y7,
  input y6,
  input y5,
  input y4,
  input y3,
  input y2,
  input y1,
  input y0,
  output \m'0 ,
  output \m'1 ,
  output \m'2 ,
  output \m'3 ,
  output Valid,
  output \2E ,
  output \1E 
);
  wire \m'0_temp ;
  wire \m'2_temp ;
  wire \m'1_temp ;
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  wire s6;
  wire s7;
  wire s8;
  wire s9;
  wire s10;
  wire s11;
  wire s12;
  wire s13;
  wire s14;
  wire s15;
  wire s16;
  wire s17;
  wire s18;
  wire s19;
  wire s20;
  wire s21;
  wire s22;
  wire s23;
  wire s24;
  wire s25;
  wire s26;
  wire s27;
  wire s28;
  wire s29;
  wire s30;
  wire s31;
  wire Valid_temp;
  wire \1E_temp ;
  assign \m'0_temp  = (((y7 ^ y6) & (y3 ^ y2)) | ((y5 ^ y4) & (y1 ^ y0)));
  assign \m'2_temp  = (((y7 ^ y3) & (y5 ^ y1)) | ((y6 ^ y2) & (y4 ^ y0)));
  assign \m'1_temp  = (((y7 ^ y5) & (y3 ^ y1)) | ((y6 ^ y4) & (y2 ^ y0)));
  assign s0 = (1'b1 & \m'0_temp );
  assign s1 = (1'b1 & \m'1_temp );
  assign s2 = (1'b1 & \m'2_temp );
  assign s3 = (y1 ^ s0);
  assign s4 = ((y3 ^ s0) ^ s1);
  assign s5 = (y2 ^ s1);
  assign s6 = ((y5 ^ s0) ^ s2);
  assign s7 = (y4 ^ s2);
  assign s8 = ((y6 ^ s1) ^ s2);
  assign s9 = (((y7 ^ s0) ^ s1) ^ s2);
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i0 (
    .a( s9 ),
    .b( 1'b0 ),
    .c_i( s8 ),
    .s( s10 ),
    .c_o( s11 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i1 (
    .a( s6 ),
    .b( 1'b0 ),
    .c_i( s7 ),
    .s( s12 ),
    .c_o( s13 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i2 (
    .a( s4 ),
    .b( 1'b0 ),
    .c_i( s5 ),
    .s( s14 ),
    .c_o( s15 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i3 (
    .a( s3 ),
    .b( 1'b0 ),
    .c_i( y0 ),
    .s( s16 ),
    .c_o( s17 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i4 (
    .a( s10 ),
    .b( s12 ),
    .c_i( 1'b0 ),
    .s( s18 ),
    .c_o( s19 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i5 (
    .a( s14 ),
    .b( s16 ),
    .c_i( 1'b0 ),
    .s( s22 ),
    .c_o( s23 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i6 (
    .a( s11 ),
    .b( s13 ),
    .c_i( s19 ),
    .s( s20 ),
    .c_o( s21 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i7 (
    .a( s15 ),
    .b( s17 ),
    .c_i( s23 ),
    .s( s24 ),
    .c_o( s25 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i8 (
    .a( s18 ),
    .b( s22 ),
    .c_i( 1'b0 ),
    .s( s31 ),
    .c_o( s26 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i9 (
    .a( s20 ),
    .b( s24 ),
    .c_i( s26 ),
    .s( s27 ),
    .c_o( s28 )
  );
  DIG_Add #(
    .Bits(1)
  )
  DIG_Add_i10 (
    .a( s21 ),
    .b( s25 ),
    .c_i( s28 ),
    .s( s29 ),
    .c_o( s30 )
  );
  assign Valid_temp = (~ s31 & (~ s27 & ~ s29));
  assign \1E_temp  = ((~ s30 & (s27 & s31)) | (~ s30 & (~ s29 & s31)));
  assign \m'3  = (s29 | s30);
  assign \2E  = (~ \1E_temp  & ~ Valid_temp);
  assign \m'0  = \m'0_temp ;
  assign \m'1  = \m'1_temp ;
  assign \m'2  = \m'2_temp ;
  assign Valid = Valid_temp;
  assign \1E  = \1E_temp ;
endmodule
