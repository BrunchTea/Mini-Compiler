data $L3 = { b 72, b 101, b 108, b 108, b 111, b 32, b 119, b 111, b 114, b 108, b 100, b 10,  b 0 }
data $L4 = { b 65, b 114, b 103, b 117, b 109, b 101, b 110, b 116, b 32, b 37, b 100, b 32, b 105, b 115, b 32, b 37, b 115, b 10,  b 0 }
export function w $main(w %argc, l %argv, ) {
@L5
  %.t1 =l copy $L3
  %.t2 =w call $printf(l %.t1, )
  %.t3 =w copy 0
  %i =w copy %.t3
@L6
  %.t4 =w copy %i
  %.t5 =w copy %argc
  %.t6 =w csltw %.t4, %.t5
  %.t7 =w copy 1
  %.t8 =w cnew %.t6, %.t7
  jnz %.t8, @L7, @L8
@L8
  %.t9 =l copy %argv
  %.t10 =l loadl %.t9
  %argument =l copy %.t10
  %.t11 =l copy %argv
  %.t12 =w copy 1
  %.t13 =l extsw %.t12
  %.t14 =l shl %.t13, 3
  %.t11 =l add %.t11, %.t14
  %argv =l copy %.t11
  %.t15 =l copy %argument
  %.t16 =w copy %i
  %.t17 =l copy $L4
  %.t18 =w call $printf(l %.t17, w %.t16, l %.t15, )
  %.t19 =w copy %i
  %i =w add %i, 1
  jmp @L6
@L7
  %.t20 =w copy 0
  %.ret =w copy %.t20
  jmp @L2
@L2
  ret %.ret
}
