export data $fred = align 8 { l 0, }
export data $mary = align 8 { l 0, }
export data $james = align 8 { l 0, }
data $L19 = { b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =w copy 5
  %.t2 =l copy $fred
  %.t3 =l copy 0
  %.t2 =l add %.t2, %.t3
  storew %.t1, %.t2
  %.t4 =w copy 6
  %.t5 =l copy $mary
  %.t6 =l copy 4
  %.t5 =l add %.t5, %.t6
  storew %.t4, %.t5
  %.t7 =l copy $mary
  %.t8 =l copy 4
  %.t7 =l add %.t7, %.t8
  %.t9 =w loadsw %.t7
  %.t10 =l copy $fred
  %.t11 =l copy 0
  %.t10 =l add %.t10, %.t11
  %.t12 =w loadsw %.t10
  %.t13 =l copy $L19
  %.t14 =w call $printf(l %.t13, w %.t12, w %.t9, )
  %.t15 =w copy 0
  %.ret =w copy %.t15
  jmp @L18
@L18
  ret %.ret
}
