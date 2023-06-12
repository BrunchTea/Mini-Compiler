export data $a = align 4 { w 0, }
export data $b = align 4 { w 0, }
export data $c = align 4 { w 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L8
  %.t1 =w copy 42
  storew %.t1, $a
  %.t2 =w copy 19
  storew %.t2, $b
  %.t3 =w loadsw $a
  %.t4 =w loadsw $b
  %.t3 =w and %.t3, %.t4
  %.t5 =l copy $L3
  %.t6 =w call $printf(l %.t5, w %.t3, )
  %.t7 =w loadsw $a
  %.t8 =w loadsw $b
  %.t7 =w or %.t7, %.t8
  %.t9 =l copy $L4
  %.t10 =w call $printf(l %.t9, w %.t7, )
  %.t11 =w loadsw $a
  %.t12 =w loadsw $b
  %.t11 =w xor %.t11, %.t12
  %.t13 =l copy $L5
  %.t14 =w call $printf(l %.t13, w %.t11, )
  %.t15 =w copy 1
  %.t16 =w copy 3
  %.t15 =w shl %.t15, %.t16
  %.t17 =l copy $L6
  %.t18 =w call $printf(l %.t17, w %.t15, )
  %.t19 =w copy 63
  %.t20 =w copy 3
  %.t19 =w shr %.t19, %.t20
  %.t21 =l copy $L7
  %.t22 =w call $printf(l %.t21, w %.t19, )
  %.t23 =w copy 0
  %.ret =w copy %.t23
  jmp @L2
@L2
  ret %.ret
}
