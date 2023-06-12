export data $x = align 4 { w 0, }
export data $y = align 4 { w 0, }
data $L19 = { b 37, b 100, b 10,  b 0 }
data $L20 = { b 37, b 100, b 10,  b 0 }
data $L21 = { b 37, b 100, b 10,  b 0 }
data $L22 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L23
  %.t1 =w copy 3
  storew %.t1, $x
  %.t2 =w copy 15
  storew %.t2, $y
  %.t3 =w loadsw $y
  %.t4 =w loadsw $x
  %.t3 =w add %.t3, %.t4
  storew %.t3, $y
  %.t5 =w loadsw $y
  %.t6 =l copy $L19
  %.t7 =w call $printf(l %.t6, w %.t5, )
  %.t8 =w copy 3
  storew %.t8, $x
  %.t9 =w copy 15
  storew %.t9, $y
  %.t10 =w loadsw $y
  %.t11 =w loadsw $x
  %.t10 =w sub %.t10, %.t11
  storew %.t10, $y
  %.t12 =w loadsw $y
  %.t13 =l copy $L20
  %.t14 =w call $printf(l %.t13, w %.t12, )
  %.t15 =w copy 3
  storew %.t15, $x
  %.t16 =w copy 15
  storew %.t16, $y
  %.t17 =w loadsw $y
  %.t18 =w loadsw $x
  %.t17 =w mul %.t17, %.t18
  storew %.t17, $y
  %.t19 =w loadsw $y
  %.t20 =l copy $L21
  %.t21 =w call $printf(l %.t20, w %.t19, )
  %.t22 =w copy 3
  storew %.t22, $x
  %.t23 =w copy 15
  storew %.t23, $y
  %.t24 =w loadsw $y
  %.t25 =w loadsw $x
  %.t24 =w div %.t24, %.t25
  storew %.t24, $y
  %.t26 =w loadsw $y
  %.t27 =l copy $L22
  %.t28 =w call $printf(l %.t27, w %.t26, )
  %.t29 =w copy 0
  %.ret =w copy %.t29
  jmp @L18
@L18
  ret %.ret
}
