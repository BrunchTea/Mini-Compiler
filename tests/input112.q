export data $y = align 8 { l 0, }
export data $x = align 4 { w 16, }
export data $fred = align 4 { w 0, w 0, w 0, w 0, w 0, }
data $L19 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =w loadsw $x
  %.t2 =l copy $fred
  %.t3 =w copy 2
  %.t4 =l extsw %.t3
  %.t5 =l shl %.t4, 2
  %.t2 =l add %.t2, %.t5
  storew %.t1, %.t2
  %.t6 =l copy $fred
  %.t7 =w copy 2
  %.t8 =l extsw %.t7
  %.t9 =l shl %.t8, 2
  %.t6 =l add %.t6, %.t9
  %.t10 =w loadsw %.t6
  %.t11 =l copy $L19
  %.t12 =w call $printf(l %.t11, w %.t10, )
  %.t13 =w copy 0
  %.ret =w copy %.t13
  jmp @L18
@L18
  ret %.ret
}
