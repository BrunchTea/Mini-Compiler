export data $a = align 4 { w 0, }
export data $b = align 4 { w 0, }
export data $c = align 4 { w 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
data $L8 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L9
  %z =l alloc4 1
  %.t1 =w copy 10
  %x =w copy %.t1
  %.t2 =w copy 20
  %y =w copy %.t2
  %.t3 =w copy 30
  storew %.t3, %z
  %.t4 =w copy %x
  %.t5 =l copy $L3
  %.t6 =w call $printf(l %.t5, w %.t4, )
  %.t7 =w copy %y
  %.t8 =l copy $L4
  %.t9 =w call $printf(l %.t8, w %.t7, )
  %.t10 =w loadub %z
  %.t11 =l copy $L5
  %.t12 =w call $printf(l %.t11, w %.t10, )
  %.t13 =w copy 5
  storew %.t13, $a
  %.t14 =w copy 15
  storew %.t14, $b
  %.t15 =w copy 25
  storew %.t15, $c
  %.t16 =w loadsw $a
  %.t17 =l copy $L6
  %.t18 =w call $printf(l %.t17, w %.t16, )
  %.t19 =w loadsw $b
  %.t20 =l copy $L7
  %.t21 =w call $printf(l %.t20, w %.t19, )
  %.t22 =w loadsw $c
  %.t23 =l copy $L8
  %.t24 =w call $printf(l %.t23, w %.t22, )
  %.t25 =w copy 0
  %.ret =w copy %.t25
  jmp @L2
@L2
  ret %.ret
}
