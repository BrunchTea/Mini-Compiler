export data $a = align 4 { w 0, }
data $L19 = { b 37, b 100, b 10,  b 0 }
data $L20 = { b 37, b 100, b 10,  b 0 }
data $L21 = { b 37, b 100, b 10,  b 0 }
data $L22 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L23
  %.t1 =w copy 24
  %.t2 =w copy 9
  %.t1 =w rem %.t1, %.t2
  %.t3 =l copy $L19
  %.t4 =w call $printf(l %.t3, w %.t1, )
  %.t5 =w copy 31
  %.t6 =w copy 11
  %.t5 =w rem %.t5, %.t6
  %.t7 =l copy $L20
  %.t8 =w call $printf(l %.t7, w %.t5, )
  %.t9 =w copy 24
  storew %.t9, $a
  %.t10 =w loadsw $a
  %.t11 =w copy 9
  %.t10 =w rem %.t10, %.t11
  storew %.t10, $a
  %.t12 =w loadsw $a
  %.t13 =l copy $L21
  %.t14 =w call $printf(l %.t13, w %.t12, )
  %.t15 =w copy 31
  storew %.t15, $a
  %.t16 =w loadsw $a
  %.t17 =w copy 11
  %.t16 =w rem %.t16, %.t17
  storew %.t16, $a
  %.t18 =w loadsw $a
  %.t19 =l copy $L22
  %.t20 =w call $printf(l %.t19, w %.t18, )
  %.t21 =w copy 0
  %.ret =w copy %.t21
  jmp @L18
@L18
  ret %.ret
}
