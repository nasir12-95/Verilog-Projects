module alu (carry_out,
    zero,
    A,
    B,
    opcode,
    result);
 output carry_out;
 output zero;
 input [7:0] A;
 input [7:0] B;
 input [2:0] opcode;
 output [7:0] result;

 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire _245_;
 wire _246_;
 wire _247_;
 wire _248_;
 wire _249_;
 wire _250_;
 wire _251_;
 wire _252_;
 wire _253_;
 wire _254_;
 wire _255_;
 wire _256_;
 wire _257_;
 wire _258_;
 wire _259_;
 wire _260_;
 wire _261_;
 wire _262_;
 wire _263_;
 wire _264_;
 wire _265_;
 wire _266_;
 wire _267_;
 wire _268_;
 wire _269_;
 wire _270_;
 wire _271_;
 wire _272_;
 wire _273_;
 wire _274_;
 wire _275_;
 wire _276_;
 wire _277_;
 wire _278_;
 wire _279_;
 wire _280_;
 wire _281_;
 wire _282_;
 wire _283_;
 wire _284_;
 wire _285_;
 wire _286_;
 wire _287_;
 wire _288_;
 wire _289_;
 wire _290_;
 wire _291_;
 wire _292_;
 wire _293_;
 wire _294_;
 wire _295_;
 wire _296_;
 wire _297_;
 wire _298_;
 wire _299_;
 wire _300_;
 wire _301_;
 wire _302_;
 wire _303_;
 wire _304_;
 wire _305_;
 wire _306_;
 wire _307_;
 wire _308_;
 wire _309_;
 wire _310_;
 wire _311_;
 wire _312_;
 wire _313_;
 wire _314_;
 wire _315_;
 wire _316_;
 wire _320_;
 wire _321_;
 wire _322_;
 wire _323_;
 wire _324_;
 wire _325_;
 wire _326_;
 wire _327_;
 wire _350_;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net6;
 wire net5;
 wire net45;
 wire net47;
 wire net49;
 wire net51;
 wire net53;
 wire net55;
 wire net57;
 wire net59;
 wire net60;
 wire net8;
 wire net7;
 wire net62;
 wire net64;
 wire net66;
 wire net68;
 wire net70;
 wire net72;
 wire net74;
 wire net77;
 wire net78;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net;
 wire net44;
 wire net46;
 wire net48;
 wire net50;
 wire net52;
 wire net54;
 wire net56;
 wire net58;
 wire net61;
 wire net63;
 wire net65;
 wire net67;
 wire net69;
 wire net71;
 wire net73;
 wire net75;
 wire net76;

 TAPCELL_X1 PHY_EDGE_ROW_0_Left_113 ();
 TAPCELL_X1 PHY_EDGE_ROW_0_Right_0 ();
 TAPCELL_X1 PHY_EDGE_ROW_100_Left_213 ();
 TAPCELL_X1 PHY_EDGE_ROW_100_Right_100 ();
 TAPCELL_X1 PHY_EDGE_ROW_101_Left_214 ();
 TAPCELL_X1 PHY_EDGE_ROW_101_Right_101 ();
 TAPCELL_X1 PHY_EDGE_ROW_102_Left_215 ();
 TAPCELL_X1 PHY_EDGE_ROW_102_Right_102 ();
 TAPCELL_X1 PHY_EDGE_ROW_103_Left_216 ();
 TAPCELL_X1 PHY_EDGE_ROW_103_Right_103 ();
 TAPCELL_X1 PHY_EDGE_ROW_104_Left_217 ();
 TAPCELL_X1 PHY_EDGE_ROW_104_Right_104 ();
 TAPCELL_X1 PHY_EDGE_ROW_105_Left_218 ();
 TAPCELL_X1 PHY_EDGE_ROW_105_Right_105 ();
 TAPCELL_X1 PHY_EDGE_ROW_106_Left_219 ();
 TAPCELL_X1 PHY_EDGE_ROW_106_Right_106 ();
 TAPCELL_X1 PHY_EDGE_ROW_107_Left_220 ();
 TAPCELL_X1 PHY_EDGE_ROW_107_Right_107 ();
 TAPCELL_X1 PHY_EDGE_ROW_108_Left_221 ();
 TAPCELL_X1 PHY_EDGE_ROW_108_Right_108 ();
 TAPCELL_X1 PHY_EDGE_ROW_109_Left_222 ();
 TAPCELL_X1 PHY_EDGE_ROW_109_Right_109 ();
 TAPCELL_X1 PHY_EDGE_ROW_10_Left_123 ();
 TAPCELL_X1 PHY_EDGE_ROW_10_Right_10 ();
 TAPCELL_X1 PHY_EDGE_ROW_110_Left_223 ();
 TAPCELL_X1 PHY_EDGE_ROW_110_Right_110 ();
 TAPCELL_X1 PHY_EDGE_ROW_111_Left_224 ();
 TAPCELL_X1 PHY_EDGE_ROW_111_Right_111 ();
 TAPCELL_X1 PHY_EDGE_ROW_112_Left_225 ();
 TAPCELL_X1 PHY_EDGE_ROW_112_Right_112 ();
 TAPCELL_X1 PHY_EDGE_ROW_11_Left_124 ();
 TAPCELL_X1 PHY_EDGE_ROW_11_Right_11 ();
 TAPCELL_X1 PHY_EDGE_ROW_12_Left_125 ();
 TAPCELL_X1 PHY_EDGE_ROW_12_Right_12 ();
 TAPCELL_X1 PHY_EDGE_ROW_13_Left_126 ();
 TAPCELL_X1 PHY_EDGE_ROW_13_Right_13 ();
 TAPCELL_X1 PHY_EDGE_ROW_14_Left_127 ();
 TAPCELL_X1 PHY_EDGE_ROW_14_Right_14 ();
 TAPCELL_X1 PHY_EDGE_ROW_15_Left_128 ();
 TAPCELL_X1 PHY_EDGE_ROW_15_Right_15 ();
 TAPCELL_X1 PHY_EDGE_ROW_16_Left_129 ();
 TAPCELL_X1 PHY_EDGE_ROW_16_Right_16 ();
 TAPCELL_X1 PHY_EDGE_ROW_17_Left_130 ();
 TAPCELL_X1 PHY_EDGE_ROW_17_Right_17 ();
 TAPCELL_X1 PHY_EDGE_ROW_18_Left_131 ();
 TAPCELL_X1 PHY_EDGE_ROW_18_Right_18 ();
 TAPCELL_X1 PHY_EDGE_ROW_19_Left_132 ();
 TAPCELL_X1 PHY_EDGE_ROW_19_Right_19 ();
 TAPCELL_X1 PHY_EDGE_ROW_1_Left_114 ();
 TAPCELL_X1 PHY_EDGE_ROW_1_Right_1 ();
 TAPCELL_X1 PHY_EDGE_ROW_20_Left_133 ();
 TAPCELL_X1 PHY_EDGE_ROW_20_Right_20 ();
 TAPCELL_X1 PHY_EDGE_ROW_21_Left_134 ();
 TAPCELL_X1 PHY_EDGE_ROW_21_Right_21 ();
 TAPCELL_X1 PHY_EDGE_ROW_22_Left_135 ();
 TAPCELL_X1 PHY_EDGE_ROW_22_Right_22 ();
 TAPCELL_X1 PHY_EDGE_ROW_23_Left_136 ();
 TAPCELL_X1 PHY_EDGE_ROW_23_Right_23 ();
 TAPCELL_X1 PHY_EDGE_ROW_24_Left_137 ();
 TAPCELL_X1 PHY_EDGE_ROW_24_Right_24 ();
 TAPCELL_X1 PHY_EDGE_ROW_25_Left_138 ();
 TAPCELL_X1 PHY_EDGE_ROW_25_Right_25 ();
 TAPCELL_X1 PHY_EDGE_ROW_26_Left_139 ();
 TAPCELL_X1 PHY_EDGE_ROW_26_Right_26 ();
 TAPCELL_X1 PHY_EDGE_ROW_27_Left_140 ();
 TAPCELL_X1 PHY_EDGE_ROW_27_Right_27 ();
 TAPCELL_X1 PHY_EDGE_ROW_28_Left_141 ();
 TAPCELL_X1 PHY_EDGE_ROW_28_Right_28 ();
 TAPCELL_X1 PHY_EDGE_ROW_29_Left_142 ();
 TAPCELL_X1 PHY_EDGE_ROW_29_Right_29 ();
 TAPCELL_X1 PHY_EDGE_ROW_2_Left_115 ();
 TAPCELL_X1 PHY_EDGE_ROW_2_Right_2 ();
 TAPCELL_X1 PHY_EDGE_ROW_30_Left_143 ();
 TAPCELL_X1 PHY_EDGE_ROW_30_Right_30 ();
 TAPCELL_X1 PHY_EDGE_ROW_31_Left_144 ();
 TAPCELL_X1 PHY_EDGE_ROW_31_Right_31 ();
 TAPCELL_X1 PHY_EDGE_ROW_32_Left_145 ();
 TAPCELL_X1 PHY_EDGE_ROW_32_Right_32 ();
 TAPCELL_X1 PHY_EDGE_ROW_33_Left_146 ();
 TAPCELL_X1 PHY_EDGE_ROW_33_Right_33 ();
 TAPCELL_X1 PHY_EDGE_ROW_34_Left_147 ();
 TAPCELL_X1 PHY_EDGE_ROW_34_Right_34 ();
 TAPCELL_X1 PHY_EDGE_ROW_35_Left_148 ();
 TAPCELL_X1 PHY_EDGE_ROW_35_Right_35 ();
 TAPCELL_X1 PHY_EDGE_ROW_36_Left_149 ();
 TAPCELL_X1 PHY_EDGE_ROW_36_Right_36 ();
 TAPCELL_X1 PHY_EDGE_ROW_37_Left_150 ();
 TAPCELL_X1 PHY_EDGE_ROW_37_Right_37 ();
 TAPCELL_X1 PHY_EDGE_ROW_38_Left_151 ();
 TAPCELL_X1 PHY_EDGE_ROW_38_Right_38 ();
 TAPCELL_X1 PHY_EDGE_ROW_39_Left_152 ();
 TAPCELL_X1 PHY_EDGE_ROW_39_Right_39 ();
 TAPCELL_X1 PHY_EDGE_ROW_3_Left_116 ();
 TAPCELL_X1 PHY_EDGE_ROW_3_Right_3 ();
 TAPCELL_X1 PHY_EDGE_ROW_40_Left_153 ();
 TAPCELL_X1 PHY_EDGE_ROW_40_Right_40 ();
 TAPCELL_X1 PHY_EDGE_ROW_41_Left_154 ();
 TAPCELL_X1 PHY_EDGE_ROW_41_Right_41 ();
 TAPCELL_X1 PHY_EDGE_ROW_42_Left_155 ();
 TAPCELL_X1 PHY_EDGE_ROW_42_Right_42 ();
 TAPCELL_X1 PHY_EDGE_ROW_43_Left_156 ();
 TAPCELL_X1 PHY_EDGE_ROW_43_Right_43 ();
 TAPCELL_X1 PHY_EDGE_ROW_44_Left_157 ();
 TAPCELL_X1 PHY_EDGE_ROW_44_Right_44 ();
 TAPCELL_X1 PHY_EDGE_ROW_45_Left_158 ();
 TAPCELL_X1 PHY_EDGE_ROW_45_Right_45 ();
 TAPCELL_X1 PHY_EDGE_ROW_46_Left_159 ();
 TAPCELL_X1 PHY_EDGE_ROW_46_Right_46 ();
 TAPCELL_X1 PHY_EDGE_ROW_47_Left_160 ();
 TAPCELL_X1 PHY_EDGE_ROW_47_Right_47 ();
 TAPCELL_X1 PHY_EDGE_ROW_48_Left_161 ();
 TAPCELL_X1 PHY_EDGE_ROW_48_Right_48 ();
 TAPCELL_X1 PHY_EDGE_ROW_49_Left_162 ();
 TAPCELL_X1 PHY_EDGE_ROW_49_Right_49 ();
 TAPCELL_X1 PHY_EDGE_ROW_4_Left_117 ();
 TAPCELL_X1 PHY_EDGE_ROW_4_Right_4 ();
 TAPCELL_X1 PHY_EDGE_ROW_50_Left_163 ();
 TAPCELL_X1 PHY_EDGE_ROW_50_Right_50 ();
 TAPCELL_X1 PHY_EDGE_ROW_51_Left_164 ();
 TAPCELL_X1 PHY_EDGE_ROW_51_Right_51 ();
 TAPCELL_X1 PHY_EDGE_ROW_52_Left_165 ();
 TAPCELL_X1 PHY_EDGE_ROW_52_Right_52 ();
 TAPCELL_X1 PHY_EDGE_ROW_53_Left_166 ();
 TAPCELL_X1 PHY_EDGE_ROW_53_Right_53 ();
 TAPCELL_X1 PHY_EDGE_ROW_54_Left_167 ();
 TAPCELL_X1 PHY_EDGE_ROW_54_Right_54 ();
 TAPCELL_X1 PHY_EDGE_ROW_55_Left_168 ();
 TAPCELL_X1 PHY_EDGE_ROW_55_Right_55 ();
 TAPCELL_X1 PHY_EDGE_ROW_56_Left_169 ();
 TAPCELL_X1 PHY_EDGE_ROW_56_Right_56 ();
 TAPCELL_X1 PHY_EDGE_ROW_57_Left_170 ();
 TAPCELL_X1 PHY_EDGE_ROW_57_Right_57 ();
 TAPCELL_X1 PHY_EDGE_ROW_58_Left_171 ();
 TAPCELL_X1 PHY_EDGE_ROW_58_Right_58 ();
 TAPCELL_X1 PHY_EDGE_ROW_59_Left_172 ();
 TAPCELL_X1 PHY_EDGE_ROW_59_Right_59 ();
 TAPCELL_X1 PHY_EDGE_ROW_5_Left_118 ();
 TAPCELL_X1 PHY_EDGE_ROW_5_Right_5 ();
 TAPCELL_X1 PHY_EDGE_ROW_60_Left_173 ();
 TAPCELL_X1 PHY_EDGE_ROW_60_Right_60 ();
 TAPCELL_X1 PHY_EDGE_ROW_61_Left_174 ();
 TAPCELL_X1 PHY_EDGE_ROW_61_Right_61 ();
 TAPCELL_X1 PHY_EDGE_ROW_62_Left_175 ();
 TAPCELL_X1 PHY_EDGE_ROW_62_Right_62 ();
 TAPCELL_X1 PHY_EDGE_ROW_63_Left_176 ();
 TAPCELL_X1 PHY_EDGE_ROW_63_Right_63 ();
 TAPCELL_X1 PHY_EDGE_ROW_64_Left_177 ();
 TAPCELL_X1 PHY_EDGE_ROW_64_Right_64 ();
 TAPCELL_X1 PHY_EDGE_ROW_65_Left_178 ();
 TAPCELL_X1 PHY_EDGE_ROW_65_Right_65 ();
 TAPCELL_X1 PHY_EDGE_ROW_66_Left_179 ();
 TAPCELL_X1 PHY_EDGE_ROW_66_Right_66 ();
 TAPCELL_X1 PHY_EDGE_ROW_67_Left_180 ();
 TAPCELL_X1 PHY_EDGE_ROW_67_Right_67 ();
 TAPCELL_X1 PHY_EDGE_ROW_68_Left_181 ();
 TAPCELL_X1 PHY_EDGE_ROW_68_Right_68 ();
 TAPCELL_X1 PHY_EDGE_ROW_69_Left_182 ();
 TAPCELL_X1 PHY_EDGE_ROW_69_Right_69 ();
 TAPCELL_X1 PHY_EDGE_ROW_6_Left_119 ();
 TAPCELL_X1 PHY_EDGE_ROW_6_Right_6 ();
 TAPCELL_X1 PHY_EDGE_ROW_70_Left_183 ();
 TAPCELL_X1 PHY_EDGE_ROW_70_Right_70 ();
 TAPCELL_X1 PHY_EDGE_ROW_71_Left_184 ();
 TAPCELL_X1 PHY_EDGE_ROW_71_Right_71 ();
 TAPCELL_X1 PHY_EDGE_ROW_72_Left_185 ();
 TAPCELL_X1 PHY_EDGE_ROW_72_Right_72 ();
 TAPCELL_X1 PHY_EDGE_ROW_73_Left_186 ();
 TAPCELL_X1 PHY_EDGE_ROW_73_Right_73 ();
 TAPCELL_X1 PHY_EDGE_ROW_74_Left_187 ();
 TAPCELL_X1 PHY_EDGE_ROW_74_Right_74 ();
 TAPCELL_X1 PHY_EDGE_ROW_75_Left_188 ();
 TAPCELL_X1 PHY_EDGE_ROW_75_Right_75 ();
 TAPCELL_X1 PHY_EDGE_ROW_76_Left_189 ();
 TAPCELL_X1 PHY_EDGE_ROW_76_Right_76 ();
 TAPCELL_X1 PHY_EDGE_ROW_77_Left_190 ();
 TAPCELL_X1 PHY_EDGE_ROW_77_Right_77 ();
 TAPCELL_X1 PHY_EDGE_ROW_78_Left_191 ();
 TAPCELL_X1 PHY_EDGE_ROW_78_Right_78 ();
 TAPCELL_X1 PHY_EDGE_ROW_79_Left_192 ();
 TAPCELL_X1 PHY_EDGE_ROW_79_Right_79 ();
 TAPCELL_X1 PHY_EDGE_ROW_7_Left_120 ();
 TAPCELL_X1 PHY_EDGE_ROW_7_Right_7 ();
 TAPCELL_X1 PHY_EDGE_ROW_80_Left_193 ();
 TAPCELL_X1 PHY_EDGE_ROW_80_Right_80 ();
 TAPCELL_X1 PHY_EDGE_ROW_81_Left_194 ();
 TAPCELL_X1 PHY_EDGE_ROW_81_Right_81 ();
 TAPCELL_X1 PHY_EDGE_ROW_82_Left_195 ();
 TAPCELL_X1 PHY_EDGE_ROW_82_Right_82 ();
 TAPCELL_X1 PHY_EDGE_ROW_83_Left_196 ();
 TAPCELL_X1 PHY_EDGE_ROW_83_Right_83 ();
 TAPCELL_X1 PHY_EDGE_ROW_84_Left_197 ();
 TAPCELL_X1 PHY_EDGE_ROW_84_Right_84 ();
 TAPCELL_X1 PHY_EDGE_ROW_85_Left_198 ();
 TAPCELL_X1 PHY_EDGE_ROW_85_Right_85 ();
 TAPCELL_X1 PHY_EDGE_ROW_86_Left_199 ();
 TAPCELL_X1 PHY_EDGE_ROW_86_Right_86 ();
 TAPCELL_X1 PHY_EDGE_ROW_87_Left_200 ();
 TAPCELL_X1 PHY_EDGE_ROW_87_Right_87 ();
 TAPCELL_X1 PHY_EDGE_ROW_88_Left_201 ();
 TAPCELL_X1 PHY_EDGE_ROW_88_Right_88 ();
 TAPCELL_X1 PHY_EDGE_ROW_89_Left_202 ();
 TAPCELL_X1 PHY_EDGE_ROW_89_Right_89 ();
 TAPCELL_X1 PHY_EDGE_ROW_8_Left_121 ();
 TAPCELL_X1 PHY_EDGE_ROW_8_Right_8 ();
 TAPCELL_X1 PHY_EDGE_ROW_90_Left_203 ();
 TAPCELL_X1 PHY_EDGE_ROW_90_Right_90 ();
 TAPCELL_X1 PHY_EDGE_ROW_91_Left_204 ();
 TAPCELL_X1 PHY_EDGE_ROW_91_Right_91 ();
 TAPCELL_X1 PHY_EDGE_ROW_92_Left_205 ();
 TAPCELL_X1 PHY_EDGE_ROW_92_Right_92 ();
 TAPCELL_X1 PHY_EDGE_ROW_93_Left_206 ();
 TAPCELL_X1 PHY_EDGE_ROW_93_Right_93 ();
 TAPCELL_X1 PHY_EDGE_ROW_94_Left_207 ();
 TAPCELL_X1 PHY_EDGE_ROW_94_Right_94 ();
 TAPCELL_X1 PHY_EDGE_ROW_95_Left_208 ();
 TAPCELL_X1 PHY_EDGE_ROW_95_Right_95 ();
 TAPCELL_X1 PHY_EDGE_ROW_96_Left_209 ();
 TAPCELL_X1 PHY_EDGE_ROW_96_Right_96 ();
 TAPCELL_X1 PHY_EDGE_ROW_97_Left_210 ();
 TAPCELL_X1 PHY_EDGE_ROW_97_Right_97 ();
 TAPCELL_X1 PHY_EDGE_ROW_98_Left_211 ();
 TAPCELL_X1 PHY_EDGE_ROW_98_Right_98 ();
 TAPCELL_X1 PHY_EDGE_ROW_99_Left_212 ();
 TAPCELL_X1 PHY_EDGE_ROW_99_Right_99 ();
 TAPCELL_X1 PHY_EDGE_ROW_9_Left_122 ();
 TAPCELL_X1 PHY_EDGE_ROW_9_Right_9 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_0_226 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_100_276 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_102_277 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_104_278 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_106_279 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_108_280 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_10_231 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_110_281 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_112_282 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_12_232 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_14_233 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_16_234 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_18_235 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_20_236 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_22_237 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_24_238 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_26_239 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_28_240 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_2_227 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_30_241 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_32_242 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_34_243 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_36_244 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_38_245 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_40_246 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_42_247 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_44_248 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_46_249 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_48_250 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_4_228 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_50_251 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_52_252 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_54_253 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_56_254 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_58_255 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_60_256 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_62_257 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_64_258 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_66_259 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_68_260 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_6_229 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_70_261 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_72_262 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_74_263 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_76_264 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_78_265 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_80_266 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_82_267 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_84_268 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_86_269 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_88_270 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_8_230 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_90_271 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_92_272 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_94_273 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_96_274 ();
 TAPCELL_X1 TAP_TAPCELL_ROW_98_275 ();
 INV_X1 _537_ (.A(A[7]),
    .ZN(_077_));
 INV_X1 _538_ (.A(A[6]),
    .ZN(_078_));
 INV_X1 _539_ (.A(A[5]),
    .ZN(_079_));
 INV_X1 _540_ (.A(A[4]),
    .ZN(_080_));
 INV_X1 _541_ (.A(A[3]),
    .ZN(_081_));
 INV_X1 _542_ (.A(A[2]),
    .ZN(_082_));
 INV_X1 _543_ (.A(A[1]),
    .ZN(_083_));
 INV_X1 _544_ (.A(net43),
    .ZN(_084_));
 LOGIC0_X1 _544__44 (.Z(net43));
 INV_X1 _545_ (.A(net26),
    .ZN(_085_));
 LOGIC0_X1 _545__27 (.Z(net26));
 INV_X1 _546_ (.A(net41),
    .ZN(_086_));
 LOGIC0_X1 _546__42 (.Z(net41));
 XNOR2_X1 _547_ (.A(B[5]),
    .B(net80),
    .ZN(_087_));
 LOGIC1_X1 _547__81 (.Z(net80));
 XNOR2_X1 _548_ (.A(A[5]),
    .B(_087_),
    .ZN(_088_));
 NAND2_X1 _549_ (.A1(net70),
    .A2(_088_),
    .ZN(_089_));
 LOGIC0_X1 _549__71 (.Z(net70));
 XNOR2_X1 _550_ (.A(net71),
    .B(_088_),
    .ZN(_090_));
 LOGIC0_X1 _550__72 (.Z(net71));
 XNOR2_X1 _551_ (.A(B[4]),
    .B(net81),
    .ZN(_091_));
 LOGIC1_X1 _551__82 (.Z(net81));
 NOR2_X1 _552_ (.A1(_080_),
    .A2(_091_),
    .ZN(_092_));
 XNOR2_X1 _553_ (.A(A[4]),
    .B(_091_),
    .ZN(_093_));
 AND2_X1 _554_ (.A1(net68),
    .A2(_093_),
    .ZN(_094_));
 LOGIC0_X1 _554__69 (.Z(net68));
 XOR2_X1 _555_ (.A(net69),
    .B(_093_),
    .Z(_095_));
 LOGIC0_X1 _555__70 (.Z(net69));
 XOR2_X1 _556_ (.A(B[0]),
    .B(net85),
    .Z(_096_));
 LOGIC1_X1 _556__86 (.Z(net85));
 XOR2_X1 _557_ (.A(A[0]),
    .B(_096_),
    .Z(_097_));
 AND2_X1 _558_ (.A1(net60),
    .A2(_097_),
    .ZN(_098_));
 LOGIC0_X1 _558__61 (.Z(net60));
 XOR2_X1 _559_ (.A(net61),
    .B(_097_),
    .Z(_099_));
 LOGIC0_X1 _559__62 (.Z(net61));
 AOI221_X1 _560_ (.A(_098_),
    .B1(_099_),
    .B2(net88),
    .C1(_096_),
    .C2(A[0]),
    .ZN(_100_));
 LOGIC1_X1 _560__89 (.Z(net88));
 XNOR2_X1 _561_ (.A(B[1]),
    .B(net84),
    .ZN(_101_));
 LOGIC1_X1 _561__85 (.Z(net84));
 XNOR2_X1 _562_ (.A(A[1]),
    .B(_101_),
    .ZN(_102_));
 NAND2_X1 _563_ (.A1(net62),
    .A2(_102_),
    .ZN(_103_));
 LOGIC0_X1 _563__63 (.Z(net62));
 XNOR2_X1 _564_ (.A(net63),
    .B(_102_),
    .ZN(_104_));
 LOGIC0_X1 _564__64 (.Z(net63));
 OAI221_X1 _565_ (.A(_103_),
    .B1(_104_),
    .B2(_100_),
    .C1(_101_),
    .C2(_083_),
    .ZN(_105_));
 XNOR2_X1 _566_ (.A(B[2]),
    .B(net83),
    .ZN(_106_));
 LOGIC1_X1 _566__84 (.Z(net83));
 NOR2_X1 _567_ (.A1(_082_),
    .A2(_106_),
    .ZN(_107_));
 XNOR2_X1 _568_ (.A(A[2]),
    .B(_106_),
    .ZN(_108_));
 AND2_X1 _569_ (.A1(net64),
    .A2(_108_),
    .ZN(_109_));
 LOGIC0_X1 _569__65 (.Z(net64));
 XNOR2_X1 _570_ (.A(net65),
    .B(_108_),
    .ZN(_110_));
 LOGIC0_X1 _570__66 (.Z(net65));
 INV_X1 _571_ (.A(_110_),
    .ZN(_111_));
 AOI211_X1 _572_ (.A(_107_),
    .B(_109_),
    .C1(_111_),
    .C2(_105_),
    .ZN(_112_));
 XNOR2_X1 _573_ (.A(B[3]),
    .B(net82),
    .ZN(_113_));
 LOGIC1_X1 _573__83 (.Z(net82));
 XNOR2_X1 _574_ (.A(A[3]),
    .B(_113_),
    .ZN(_114_));
 NAND2_X1 _575_ (.A1(net66),
    .A2(_114_),
    .ZN(_115_));
 LOGIC0_X1 _575__67 (.Z(net66));
 XNOR2_X1 _576_ (.A(net67),
    .B(_114_),
    .ZN(_116_));
 LOGIC0_X1 _576__68 (.Z(net67));
 OAI221_X1 _577_ (.A(_115_),
    .B1(_116_),
    .B2(_112_),
    .C1(_113_),
    .C2(_081_),
    .ZN(_117_));
 AOI211_X1 _578_ (.A(_092_),
    .B(_094_),
    .C1(_095_),
    .C2(_117_),
    .ZN(_118_));
 OAI221_X1 _579_ (.A(_089_),
    .B1(_090_),
    .B2(_118_),
    .C1(_087_),
    .C2(_079_),
    .ZN(_119_));
 XNOR2_X1 _580_ (.A(B[6]),
    .B(net79),
    .ZN(_120_));
 LOGIC1_X1 _580__80 (.Z(net79));
 NOR2_X1 _581_ (.A1(_078_),
    .A2(_120_),
    .ZN(_121_));
 XNOR2_X1 _582_ (.A(A[6]),
    .B(_120_),
    .ZN(_122_));
 XOR2_X1 _583_ (.A(net72),
    .B(_122_),
    .Z(_123_));
 LOGIC0_X1 _583__73 (.Z(net72));
 NAND2_X1 _584_ (.A1(_119_),
    .A2(_123_),
    .ZN(_124_));
 NOR2_X1 _585_ (.A1(_119_),
    .A2(_123_),
    .ZN(_125_));
 XOR2_X1 _586_ (.A(opcode[2]),
    .B(net28),
    .Z(_126_));
 LOGIC0_X1 _586__29 (.Z(net28));
 XOR2_X1 _587_ (.A(opcode[1]),
    .B(net27),
    .Z(_127_));
 LOGIC0_X1 _587__28 (.Z(net27));
 XOR2_X1 _588_ (.A(opcode[0]),
    .B(net89),
    .Z(_128_));
 LOGIC1_X1 _588__90 (.Z(net89));
 NOR3_X1 _589_ (.A1(_126_),
    .A2(_127_),
    .A3(_128_),
    .ZN(_129_));
 INV_X1 _590_ (.A(_129_),
    .ZN(_130_));
 NAND2_X1 _591_ (.A1(_124_),
    .A2(_129_),
    .ZN(_131_));
 XNOR2_X1 _592_ (.A(B[5]),
    .B(net10),
    .ZN(_132_));
 LOGIC0_X1 _592__11 (.Z(net10));
 NOR2_X1 _593_ (.A1(_079_),
    .A2(_132_),
    .ZN(_133_));
 XNOR2_X1 _594_ (.A(A[5]),
    .B(_132_),
    .ZN(_134_));
 XNOR2_X1 _595_ (.A(net53),
    .B(_134_),
    .ZN(_135_));
 LOGIC0_X1 _595__54 (.Z(net53));
 INV_X1 _596_ (.A(_135_),
    .ZN(_136_));
 XNOR2_X1 _597_ (.A(B[4]),
    .B(net11),
    .ZN(_137_));
 LOGIC0_X1 _597__12 (.Z(net11));
 XNOR2_X1 _598_ (.A(A[4]),
    .B(_137_),
    .ZN(_138_));
 NAND2_X1 _599_ (.A1(net51),
    .A2(_138_),
    .ZN(_139_));
 LOGIC0_X1 _599__52 (.Z(net51));
 XNOR2_X1 _600_ (.A(net52),
    .B(_138_),
    .ZN(_140_));
 LOGIC0_X1 _600__53 (.Z(net52));
 XOR2_X1 _601_ (.A(B[0]),
    .B(net15),
    .Z(_141_));
 LOGIC0_X1 _601__16 (.Z(net15));
 NAND2_X1 _602_ (.A1(A[0]),
    .A2(_141_),
    .ZN(_142_));
 XNOR2_X1 _603_ (.A(A[0]),
    .B(_141_),
    .ZN(_143_));
 AOI21_X1 _604_ (.A(_085_),
    .B1(_143_),
    .B2(_084_),
    .ZN(_144_));
 OAI21_X1 _605_ (.A(_142_),
    .B1(_143_),
    .B2(_084_),
    .ZN(_145_));
 XOR2_X1 _606_ (.A(B[1]),
    .B(net14),
    .Z(_146_));
 LOGIC0_X1 _606__15 (.Z(net14));
 AND2_X1 _607_ (.A1(A[1]),
    .A2(_146_),
    .ZN(_147_));
 XNOR2_X1 _608_ (.A(_083_),
    .B(_146_),
    .ZN(_148_));
 XOR2_X1 _609_ (.A(net45),
    .B(_148_),
    .Z(_149_));
 LOGIC0_X1 _609__46 (.Z(net45));
 OAI21_X1 _610_ (.A(_149_),
    .B1(_145_),
    .B2(_144_),
    .ZN(_150_));
 AOI21_X1 _611_ (.A(_147_),
    .B1(_148_),
    .B2(net46),
    .ZN(_151_));
 LOGIC0_X1 _611__47 (.Z(net46));
 XNOR2_X1 _612_ (.A(B[2]),
    .B(net13),
    .ZN(_152_));
 LOGIC0_X1 _612__14 (.Z(net13));
 XNOR2_X1 _613_ (.A(A[2]),
    .B(_152_),
    .ZN(_153_));
 NAND2_X1 _614_ (.A1(net47),
    .A2(_153_),
    .ZN(_154_));
 LOGIC0_X1 _614__48 (.Z(net47));
 XNOR2_X1 _615_ (.A(net48),
    .B(_153_),
    .ZN(_155_));
 LOGIC0_X1 _615__49 (.Z(net48));
 AOI21_X1 _616_ (.A(_155_),
    .B1(_151_),
    .B2(_150_),
    .ZN(_156_));
 OAI21_X1 _617_ (.A(_154_),
    .B1(_152_),
    .B2(_082_),
    .ZN(_157_));
 XNOR2_X1 _618_ (.A(B[3]),
    .B(net12),
    .ZN(_158_));
 LOGIC0_X1 _618__13 (.Z(net12));
 NOR2_X1 _619_ (.A1(_081_),
    .A2(_158_),
    .ZN(_159_));
 XNOR2_X1 _620_ (.A(A[3]),
    .B(_158_),
    .ZN(_160_));
 XNOR2_X1 _621_ (.A(net49),
    .B(_160_),
    .ZN(_161_));
 LOGIC0_X1 _621__50 (.Z(net49));
 INV_X1 _622_ (.A(_161_),
    .ZN(_162_));
 OAI21_X1 _623_ (.A(_162_),
    .B1(_157_),
    .B2(_156_),
    .ZN(_163_));
 AOI21_X1 _624_ (.A(_159_),
    .B1(_160_),
    .B2(net50),
    .ZN(_164_));
 LOGIC0_X1 _624__51 (.Z(net50));
 AOI21_X1 _625_ (.A(_140_),
    .B1(_163_),
    .B2(_164_),
    .ZN(_165_));
 OAI21_X1 _626_ (.A(_139_),
    .B1(_137_),
    .B2(_080_),
    .ZN(_166_));
 OAI21_X1 _627_ (.A(_136_),
    .B1(_165_),
    .B2(_166_),
    .ZN(_167_));
 AOI21_X1 _628_ (.A(_133_),
    .B1(_134_),
    .B2(net54),
    .ZN(_168_));
 LOGIC0_X1 _628__55 (.Z(net54));
 XNOR2_X1 _629_ (.A(B[6]),
    .B(net9),
    .ZN(_169_));
 LOGIC0_X1 _629__10 (.Z(net9));
 NOR2_X1 _630_ (.A1(_078_),
    .A2(_169_),
    .ZN(_170_));
 XNOR2_X1 _631_ (.A(A[6]),
    .B(_169_),
    .ZN(_171_));
 XNOR2_X1 _632_ (.A(net55),
    .B(_171_),
    .ZN(_172_));
 LOGIC0_X1 _632__56 (.Z(net55));
 AOI21_X1 _633_ (.A(_172_),
    .B1(_168_),
    .B2(_167_),
    .ZN(_173_));
 NAND3_X1 _634_ (.A1(_167_),
    .A2(_168_),
    .A3(_172_),
    .ZN(_174_));
 NOR3_X1 _635_ (.A1(opcode[2]),
    .A2(opcode[0]),
    .A3(opcode[1]),
    .ZN(_175_));
 OR3_X1 _636_ (.A1(opcode[2]),
    .A2(opcode[0]),
    .A3(opcode[1]),
    .ZN(_176_));
 NOR2_X1 _637_ (.A1(_173_),
    .A2(_176_),
    .ZN(_177_));
 XNOR2_X1 _638_ (.A(opcode[0]),
    .B(net29),
    .ZN(_178_));
 LOGIC0_X1 _638__30 (.Z(net29));
 XNOR2_X1 _639_ (.A(opcode[1]),
    .B(net90),
    .ZN(_179_));
 LOGIC1_X1 _639__91 (.Z(net90));
 XNOR2_X1 _640_ (.A(opcode[2]),
    .B(net30),
    .ZN(_180_));
 LOGIC0_X1 _640__31 (.Z(net30));
 AND3_X1 _641_ (.A1(_178_),
    .A2(_179_),
    .A3(_180_),
    .ZN(_181_));
 NAND3_X1 _642_ (.A1(_178_),
    .A2(_179_),
    .A3(_180_),
    .ZN(_182_));
 XOR2_X1 _643_ (.A(opcode[1]),
    .B(net34),
    .Z(_183_));
 LOGIC0_X1 _643__35 (.Z(net34));
 XOR2_X1 _644_ (.A(opcode[0]),
    .B(net94),
    .Z(_184_));
 LOGIC1_X1 _644__95 (.Z(net94));
 XOR2_X1 _645_ (.A(opcode[2]),
    .B(net95),
    .Z(_185_));
 LOGIC1_X1 _645__96 (.Z(net95));
 NOR3_X1 _646_ (.A1(_183_),
    .A2(_184_),
    .A3(_185_),
    .ZN(_186_));
 OR3_X1 _647_ (.A1(_129_),
    .A2(_181_),
    .A3(net4),
    .ZN(_187_));
 XOR2_X1 _648_ (.A(opcode[1]),
    .B(net96),
    .Z(_188_));
 LOGIC1_X1 _648__97 (.Z(net96));
 XOR2_X1 _649_ (.A(opcode[0]),
    .B(net37),
    .Z(_189_));
 LOGIC0_X1 _649__38 (.Z(net37));
 XOR2_X1 _650_ (.A(opcode[2]),
    .B(net97),
    .Z(_190_));
 LOGIC1_X1 _650__98 (.Z(net97));
 NOR3_X1 _651_ (.A1(_188_),
    .A2(_189_),
    .A3(_190_),
    .ZN(_191_));
 XNOR2_X1 _652_ (.A(opcode[2]),
    .B(net31),
    .ZN(_192_));
 LOGIC0_X1 _652__32 (.Z(net31));
 XNOR2_X1 _653_ (.A(opcode[1]),
    .B(net91),
    .ZN(_193_));
 LOGIC1_X1 _653__92 (.Z(net91));
 XNOR2_X1 _654_ (.A(opcode[0]),
    .B(net92),
    .ZN(_194_));
 LOGIC1_X1 _654__93 (.Z(net92));
 NAND3_X1 _655_ (.A1(_192_),
    .A2(_193_),
    .A3(_194_),
    .ZN(_195_));
 INV_X1 _656_ (.A(_195_),
    .ZN(_196_));
 XNOR2_X1 _657_ (.A(opcode[1]),
    .B(net32),
    .ZN(_197_));
 LOGIC0_X1 _657__33 (.Z(net32));
 XNOR2_X1 _658_ (.A(opcode[0]),
    .B(net33),
    .ZN(_198_));
 LOGIC0_X1 _658__34 (.Z(net33));
 XNOR2_X1 _659_ (.A(opcode[2]),
    .B(net93),
    .ZN(_199_));
 LOGIC1_X1 _659__94 (.Z(net93));
 NAND3_X1 _660_ (.A1(_197_),
    .A2(_198_),
    .A3(_199_),
    .ZN(_200_));
 NAND2_X1 _661_ (.A1(_195_),
    .A2(_200_),
    .ZN(_201_));
 NOR4_X1 _662_ (.A1(_175_),
    .A2(_187_),
    .A3(_191_),
    .A4(_201_),
    .ZN(_202_));
 AOI21_X1 _663_ (.A(_200_),
    .B1(B[6]),
    .B2(A[6]),
    .ZN(_203_));
 OAI22_X1 _664_ (.A1(A[6]),
    .A2(B[6]),
    .B1(_196_),
    .B2(_203_),
    .ZN(_204_));
 NAND3_X1 _665_ (.A1(A[6]),
    .A2(B[6]),
    .A3(_181_),
    .ZN(_205_));
 AOI22_X1 _666_ (.A1(A[5]),
    .A2(_186_),
    .B1(net3),
    .B2(A[7]),
    .ZN(_206_));
 NAND3_X1 _667_ (.A1(_204_),
    .A2(_205_),
    .A3(_206_),
    .ZN(_207_));
 AOI221_X1 _668_ (.A(_207_),
    .B1(_177_),
    .B2(_174_),
    .C1(net17),
    .C2(net2),
    .ZN(_208_));
 LOGIC0_X1 _668__18 (.Z(net17));
 OAI21_X1 _669_ (.A(_208_),
    .B1(_131_),
    .B2(_125_),
    .ZN(_326_));
 XNOR2_X1 _670_ (.A(_090_),
    .B(_118_),
    .ZN(_209_));
 OR3_X1 _671_ (.A1(_136_),
    .A2(_165_),
    .A3(_166_),
    .ZN(_210_));
 NAND3_X1 _672_ (.A1(_167_),
    .A2(_175_),
    .A3(_210_),
    .ZN(_211_));
 AND2_X1 _673_ (.A1(A[5]),
    .A2(B[5]),
    .ZN(_212_));
 OR2_X1 _674_ (.A1(A[5]),
    .A2(B[5]),
    .ZN(_213_));
 OAI21_X1 _675_ (.A(_195_),
    .B1(_200_),
    .B2(_212_),
    .ZN(_214_));
 AOI222_X1 _676_ (.A1(A[6]),
    .A2(net3),
    .B1(_213_),
    .B2(_214_),
    .C1(net2),
    .C2(net18),
    .ZN(_215_));
 LOGIC0_X1 _676__19 (.Z(net18));
 AOI22_X1 _677_ (.A1(A[4]),
    .A2(_186_),
    .B1(_212_),
    .B2(_181_),
    .ZN(_216_));
 AND3_X1 _678_ (.A1(_211_),
    .A2(_215_),
    .A3(_216_),
    .ZN(_217_));
 OAI21_X1 _679_ (.A(_217_),
    .B1(_209_),
    .B2(_130_),
    .ZN(_325_));
 XNOR2_X1 _680_ (.A(_095_),
    .B(_117_),
    .ZN(_218_));
 NAND3_X1 _681_ (.A1(_140_),
    .A2(_163_),
    .A3(_164_),
    .ZN(_219_));
 NAND2_X1 _682_ (.A1(_175_),
    .A2(_219_),
    .ZN(_220_));
 NAND2_X1 _683_ (.A1(A[4]),
    .A2(B[4]),
    .ZN(_221_));
 OR2_X1 _684_ (.A1(A[4]),
    .A2(B[4]),
    .ZN(_222_));
 OAI211_X1 _685_ (.A(_201_),
    .B(_222_),
    .C1(_221_),
    .C2(_196_),
    .ZN(_223_));
 NAND2_X1 _686_ (.A1(A[5]),
    .A2(net3),
    .ZN(_224_));
 OAI211_X1 _687_ (.A(_223_),
    .B(_224_),
    .C1(_182_),
    .C2(_221_),
    .ZN(_225_));
 AOI221_X1 _688_ (.A(_225_),
    .B1(net1),
    .B2(net19),
    .C1(A[3]),
    .C2(net4),
    .ZN(_226_));
 LOGIC0_X1 _688__20 (.Z(net19));
 OAI221_X1 _689_ (.A(_226_),
    .B1(_220_),
    .B2(_165_),
    .C1(_130_),
    .C2(_218_),
    .ZN(_324_));
 XOR2_X1 _690_ (.A(_112_),
    .B(_116_),
    .Z(_227_));
 NOR3_X1 _691_ (.A1(_156_),
    .A2(_157_),
    .A3(_162_),
    .ZN(_228_));
 NAND2_X1 _692_ (.A1(_163_),
    .A2(_175_),
    .ZN(_229_));
 NAND2_X1 _693_ (.A1(A[3]),
    .A2(B[3]),
    .ZN(_230_));
 OR2_X1 _694_ (.A1(A[3]),
    .A2(B[3]),
    .ZN(_231_));
 OAI211_X1 _695_ (.A(_201_),
    .B(_231_),
    .C1(_230_),
    .C2(_196_),
    .ZN(_232_));
 AOI222_X1 _696_ (.A1(A[2]),
    .A2(net4),
    .B1(net1),
    .B2(net20),
    .C1(net3),
    .C2(A[4]),
    .ZN(_233_));
 LOGIC0_X1 _696__21 (.Z(net20));
 OAI211_X1 _697_ (.A(_232_),
    .B(_233_),
    .C1(_182_),
    .C2(_230_),
    .ZN(_234_));
 AOI21_X1 _698_ (.A(_234_),
    .B1(_227_),
    .B2(_129_),
    .ZN(_235_));
 OAI21_X1 _699_ (.A(_235_),
    .B1(_229_),
    .B2(_228_),
    .ZN(_323_));
 XNOR2_X1 _700_ (.A(_105_),
    .B(_111_),
    .ZN(_236_));
 AND3_X1 _701_ (.A1(_150_),
    .A2(_151_),
    .A3(_155_),
    .ZN(_237_));
 OR3_X1 _702_ (.A1(_156_),
    .A2(_176_),
    .A3(_237_),
    .ZN(_238_));
 NAND3_X1 _703_ (.A1(A[2]),
    .A2(B[2]),
    .A3(_195_),
    .ZN(_239_));
 OAI211_X1 _704_ (.A(_201_),
    .B(_239_),
    .C1(A[2]),
    .C2(B[2]),
    .ZN(_240_));
 NAND3_X1 _705_ (.A1(A[2]),
    .A2(B[2]),
    .A3(_181_),
    .ZN(_241_));
 NAND2_X1 _706_ (.A1(A[1]),
    .A2(net4),
    .ZN(_242_));
 NAND3_X1 _707_ (.A1(_240_),
    .A2(_241_),
    .A3(_242_),
    .ZN(_243_));
 AOI221_X1 _708_ (.A(_243_),
    .B1(net1),
    .B2(net21),
    .C1(A[3]),
    .C2(_191_),
    .ZN(_244_));
 LOGIC0_X1 _708__22 (.Z(net21));
 OAI211_X1 _709_ (.A(_238_),
    .B(_244_),
    .C1(_130_),
    .C2(_236_),
    .ZN(_322_));
 XNOR2_X1 _710_ (.A(_100_),
    .B(_104_),
    .ZN(_245_));
 NOR3_X1 _711_ (.A1(_144_),
    .A2(_145_),
    .A3(_149_),
    .ZN(_246_));
 OR2_X1 _712_ (.A1(_176_),
    .A2(_246_),
    .ZN(_247_));
 INV_X1 _713_ (.A(_247_),
    .ZN(_248_));
 NAND2_X1 _714_ (.A1(A[1]),
    .A2(B[1]),
    .ZN(_249_));
 AOI22_X1 _715_ (.A1(A[0]),
    .A2(net4),
    .B1(_191_),
    .B2(A[2]),
    .ZN(_250_));
 OR2_X1 _716_ (.A1(A[1]),
    .A2(B[1]),
    .ZN(_251_));
 OAI211_X1 _717_ (.A(_201_),
    .B(_251_),
    .C1(_249_),
    .C2(_196_),
    .ZN(_252_));
 OAI211_X1 _718_ (.A(_250_),
    .B(_252_),
    .C1(_182_),
    .C2(_249_),
    .ZN(_253_));
 AOI221_X1 _719_ (.A(_253_),
    .B1(_248_),
    .B2(_150_),
    .C1(net22),
    .C2(net1),
    .ZN(_254_));
 LOGIC0_X1 _719__23 (.Z(net22));
 OAI21_X1 _720_ (.A(_254_),
    .B1(_245_),
    .B2(_130_),
    .ZN(_321_));
 XOR2_X1 _721_ (.A(net86),
    .B(_099_),
    .Z(_255_));
 LOGIC1_X1 _721__87 (.Z(net86));
 XNOR2_X1 _722_ (.A(net44),
    .B(_143_),
    .ZN(_256_));
 LOGIC0_X1 _722__45 (.Z(net44));
 XNOR2_X1 _723_ (.A(net16),
    .B(_256_),
    .ZN(_257_));
 LOGIC0_X1 _723__17 (.Z(net16));
 AND2_X1 _724_ (.A1(A[0]),
    .A2(B[0]),
    .ZN(_258_));
 OAI21_X1 _725_ (.A(_195_),
    .B1(_200_),
    .B2(_258_),
    .ZN(_259_));
 OAI21_X1 _726_ (.A(_259_),
    .B1(B[0]),
    .B2(A[0]),
    .ZN(_260_));
 AOI222_X1 _727_ (.A1(net24),
    .A2(net4),
    .B1(_258_),
    .B2(_181_),
    .C1(_191_),
    .C2(A[1]),
    .ZN(_261_));
 LOGIC0_X1 _727__25 (.Z(net24));
 NAND2_X1 _728_ (.A1(_260_),
    .A2(_261_),
    .ZN(_262_));
 AOI221_X1 _729_ (.A(_262_),
    .B1(_255_),
    .B2(_129_),
    .C1(net23),
    .C2(_202_),
    .ZN(_263_));
 LOGIC0_X1 _729__24 (.Z(net23));
 OAI21_X1 _730_ (.A(_263_),
    .B1(_257_),
    .B2(_176_),
    .ZN(_320_));
 XOR2_X1 _731_ (.A(B[7]),
    .B(net78),
    .Z(_264_));
 LOGIC1_X1 _731__79 (.Z(net78));
 AND2_X1 _732_ (.A1(A[7]),
    .A2(_264_),
    .ZN(_265_));
 XNOR2_X1 _733_ (.A(_077_),
    .B(_264_),
    .ZN(_266_));
 NOR2_X1 _734_ (.A1(net74),
    .A2(_266_),
    .ZN(_267_));
 LOGIC0_X1 _734__75 (.Z(net74));
 XNOR2_X1 _735_ (.A(net75),
    .B(_266_),
    .ZN(_268_));
 LOGIC0_X1 _735__76 (.Z(net75));
 AOI21_X1 _736_ (.A(_121_),
    .B1(_122_),
    .B2(net73),
    .ZN(_269_));
 LOGIC0_X1 _736__74 (.Z(net73));
 INV_X1 _737_ (.A(_269_),
    .ZN(_270_));
 AOI21_X1 _738_ (.A(_270_),
    .B1(_123_),
    .B2(_119_),
    .ZN(_271_));
 XNOR2_X1 _739_ (.A(_268_),
    .B(_271_),
    .ZN(_272_));
 AOI21_X1 _740_ (.A(_170_),
    .B1(_171_),
    .B2(net56),
    .ZN(_273_));
 LOGIC0_X1 _740__57 (.Z(net56));
 INV_X1 _741_ (.A(_273_),
    .ZN(_274_));
 XNOR2_X1 _742_ (.A(B[7]),
    .B(net8),
    .ZN(_275_));
 LOGIC0_X1 _742__9 (.Z(net8));
 XNOR2_X1 _743_ (.A(A[7]),
    .B(_275_),
    .ZN(_276_));
 NAND2_X1 _744_ (.A1(net57),
    .A2(_276_),
    .ZN(_277_));
 LOGIC0_X1 _744__58 (.Z(net57));
 XNOR2_X1 _745_ (.A(net58),
    .B(_276_),
    .ZN(_278_));
 LOGIC0_X1 _745__59 (.Z(net58));
 INV_X1 _746_ (.A(_278_),
    .ZN(_279_));
 NOR3_X1 _747_ (.A1(_173_),
    .A2(_274_),
    .A3(_279_),
    .ZN(_280_));
 OAI21_X1 _748_ (.A(_279_),
    .B1(_274_),
    .B2(_173_),
    .ZN(_281_));
 NAND2_X1 _749_ (.A1(_175_),
    .A2(_281_),
    .ZN(_282_));
 NAND2_X1 _750_ (.A1(A[7]),
    .A2(B[7]),
    .ZN(_283_));
 OR2_X1 _751_ (.A1(A[7]),
    .A2(B[7]),
    .ZN(_284_));
 OAI211_X1 _752_ (.A(_201_),
    .B(_284_),
    .C1(_283_),
    .C2(_196_),
    .ZN(_285_));
 AOI22_X1 _753_ (.A1(A[6]),
    .A2(_186_),
    .B1(net3),
    .B2(net36),
    .ZN(_286_));
 LOGIC0_X1 _753__37 (.Z(net36));
 OAI211_X1 _754_ (.A(_285_),
    .B(_286_),
    .C1(_182_),
    .C2(_283_),
    .ZN(_287_));
 AOI21_X1 _755_ (.A(_287_),
    .B1(net2),
    .B2(net35),
    .ZN(_288_));
 LOGIC0_X1 _755__36 (.Z(net35));
 OAI221_X1 _756_ (.A(_288_),
    .B1(_282_),
    .B2(_280_),
    .C1(_130_),
    .C2(_272_),
    .ZN(_327_));
 OAI211_X1 _757_ (.A(_277_),
    .B(_281_),
    .C1(_077_),
    .C2(_275_),
    .ZN(_289_));
 XOR2_X1 _758_ (.A(net25),
    .B(net5),
    .Z(_290_));
 LOGIC0_X1 _758__26 (.Z(net25));
 LOGIC0_X1 _758__6 (.Z(net5));
 XNOR2_X1 _759_ (.A(net59),
    .B(net),
    .ZN(_291_));
 LOGIC0_X1 _759__5 (.Z(net));
 LOGIC0_X1 _759__60 (.Z(net59));
 XNOR2_X1 _760_ (.A(_290_),
    .B(_291_),
    .ZN(_292_));
 XNOR2_X1 _761_ (.A(_289_),
    .B(_292_),
    .ZN(_293_));
 XNOR2_X1 _762_ (.A(opcode[0]),
    .B(net98),
    .ZN(_294_));
 LOGIC1_X1 _762__99 (.Z(net98));
 XNOR2_X1 _763_ (.A(opcode[2]),
    .B(net39),
    .ZN(_295_));
 LOGIC0_X1 _763__40 (.Z(net39));
 XNOR2_X1 _764_ (.A(opcode[1]),
    .B(net38),
    .ZN(_296_));
 LOGIC0_X1 _764__39 (.Z(net38));
 NAND3_X1 _765_ (.A1(_294_),
    .A2(_295_),
    .A3(_296_),
    .ZN(_297_));
 AOI21_X1 _766_ (.A(_265_),
    .B1(_266_),
    .B2(net76),
    .ZN(_298_));
 LOGIC0_X1 _766__77 (.Z(net76));
 OAI221_X1 _767_ (.A(_298_),
    .B1(_269_),
    .B2(_267_),
    .C1(_124_),
    .C2(_268_),
    .ZN(_299_));
 XOR2_X1 _768_ (.A(net87),
    .B(net7),
    .Z(_300_));
 LOGIC0_X1 _768__8 (.Z(net7));
 LOGIC1_X1 _768__88 (.Z(net87));
 XNOR2_X1 _769_ (.A(net77),
    .B(net6),
    .ZN(_301_));
 LOGIC0_X1 _769__7 (.Z(net6));
 LOGIC0_X1 _769__78 (.Z(net77));
 XNOR2_X1 _770_ (.A(_300_),
    .B(_301_),
    .ZN(_302_));
 XNOR2_X1 _771_ (.A(_299_),
    .B(_302_),
    .ZN(_303_));
 XOR2_X1 _772_ (.A(opcode[1]),
    .B(net40),
    .Z(_304_));
 LOGIC0_X1 _772__41 (.Z(net40));
 XOR2_X1 _773_ (.A(opcode[0]),
    .B(net99),
    .Z(_305_));
 LOGIC1_X1 _773__100 (.Z(net99));
 XOR2_X1 _774_ (.A(opcode[2]),
    .B(net100),
    .Z(_306_));
 LOGIC1_X1 _774__101 (.Z(net100));
 NOR3_X1 _775_ (.A1(_304_),
    .A2(_305_),
    .A3(_306_),
    .ZN(_307_));
 XOR2_X1 _776_ (.A(opcode[1]),
    .B(net101),
    .Z(_308_));
 LOGIC1_X1 _776__102 (.Z(net101));
 XOR2_X1 _777_ (.A(opcode[0]),
    .B(net42),
    .Z(_309_));
 LOGIC0_X1 _777__43 (.Z(net42));
 XOR2_X1 _778_ (.A(opcode[2]),
    .B(net102),
    .Z(_310_));
 LOGIC1_X1 _778__103 (.Z(net102));
 NOR3_X1 _779_ (.A1(_308_),
    .A2(_309_),
    .A3(_310_),
    .ZN(_311_));
 NOR4_X1 _780_ (.A1(_086_),
    .A2(_175_),
    .A3(_307_),
    .A4(_311_),
    .ZN(_312_));
 AND2_X1 _781_ (.A1(A[7]),
    .A2(_307_),
    .ZN(_313_));
 AOI221_X1 _782_ (.A(_313_),
    .B1(_312_),
    .B2(_297_),
    .C1(A[0]),
    .C2(_311_),
    .ZN(_314_));
 OAI221_X1 _783_ (.A(_314_),
    .B1(_303_),
    .B2(_297_),
    .C1(_176_),
    .C2(_293_),
    .ZN(_076_));
 OR3_X1 _784_ (.A1(_322_),
    .A2(_321_),
    .A3(_320_),
    .ZN(_315_));
 OR3_X1 _785_ (.A1(_324_),
    .A2(_323_),
    .A3(_315_),
    .ZN(_316_));
 NOR4_X1 _786_ (.A1(_326_),
    .A2(_325_),
    .A3(_327_),
    .A4(_316_),
    .ZN(_350_));
 BUF_X1 max_cap1 (.A(_202_),
    .Z(net1));
 BUF_X1 max_cap2 (.A(_202_),
    .Z(net2));
 BUF_X2 max_cap3 (.A(_191_),
    .Z(net3));
 BUF_X2 max_cap4 (.A(_186_),
    .Z(net4));
 assign carry_out = _076_;
 assign result[0] = _320_;
 assign result[1] = _321_;
 assign result[2] = _322_;
 assign result[3] = _323_;
 assign result[4] = _324_;
 assign result[5] = _325_;
 assign result[6] = _326_;
 assign result[7] = _327_;
 assign zero = _350_;
endmodule
