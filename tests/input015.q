data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L7
  %a =l alloc8 1
  %c =l alloc4 1
  %d =l alloc8 1
  %.t1 =w copy 18
  storew %.t1, %a
  %.t2 =w loadub %a
  %.t3 =l copy $L3
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =l copy %a
  %b =l copy %.t5
  %.t6 =l copy %b
  %.t7 =w loadub %.t6
  storew %.t7, %c
  %.t8 =w loadub %c
  %.t9 =l copy $L4
  %.t10 =w call $printf(l %.t9, w %.t8, )
  %.t11 =w copy 12
  storew %.t11, %d
  %.t12 =w loadsw %d
  %.t13 =l copy $L5
  %.t14 =w call $printf(l %.t13, w %.t12, )
  %.t15 =l copy %d
  %e =l copy %.t15
  %.t16 =l copy %e
  %.t17 =w loadsw %.t16
  %f =w copy %.t17
  %.t18 =w copy %f
  %.t19 =l copy $L6
  %.t20 =w call $printf(l %.t19, w %.t18, )
  %.t21 =w copy 0
  %.ret =w copy %.t21
  jmp @L2
@L2
  ret %.ret
}
