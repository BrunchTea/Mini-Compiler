export data $var1 = align 4 { w 0, }
export data $var2 = align 8 { l 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L5
  %.t1 =w copy 5
  storew %.t1, $var1
  %.t2 =w loadsw $var1
  %.t3 =l copy $L3
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =w copy 7
  %.t6 =l copy $var2
  %.t7 =l copy 0
  %.t6 =l add %.t6, %.t7
  storew %.t5, %.t6
  %.t8 =w copy 10
  %.t9 =l copy $var2
  %.t10 =l copy 4
  %.t9 =l add %.t9, %.t10
  storew %.t8, %.t9
  %.t11 =l copy $var2
  %.t12 =l copy 0
  %.t11 =l add %.t11, %.t12
  %.t13 =w loadsw %.t11
  %.t14 =l copy $var2
  %.t15 =l copy 4
  %.t14 =l add %.t14, %.t15
  %.t16 =w loadsw %.t14
  %.t13 =w add %.t13, %.t16
  %.t17 =l copy $L4
  %.t18 =w call $printf(l %.t17, w %.t13, )
  %.t19 =w copy 0
  %.ret =w copy %.t19
  jmp @L2
@L2
  ret %.ret
}
