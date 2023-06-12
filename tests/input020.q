export data $a = align 4 { w 0, }
export data $b = align 4 { w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L4
  %.t1 =w copy 12
  %.t2 =l copy $b
  %.t3 =w copy 3
  %.t4 =l extsw %.t3
  %.t5 =l shl %.t4, 2
  %.t2 =l add %.t2, %.t5
  storew %.t1, %.t2
  %.t6 =l copy $b
  %.t7 =w copy 3
  %.t8 =l extsw %.t7
  %.t9 =l shl %.t8, 2
  %.t6 =l add %.t6, %.t9
  %.t10 =w loadsw %.t6
  storew %.t10, $a
  %.t11 =w loadsw $a
  %.t12 =l copy $L3
  %.t13 =w call $printf(l %.t12, w %.t11, )
  %.t14 =w copy 0
  %.ret =w copy %.t14
  jmp @L2
@L2
  ret %.ret
}
