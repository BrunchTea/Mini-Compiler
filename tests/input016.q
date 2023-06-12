export data $c = align 4 { w 0, }
export data $d = align 4 { w 0, }
export data $e = align 8 { l 0, }
export data $f = align 4 { w 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L5
  %.t1 =w copy 12
  storew %.t1, $c
  %.t2 =w copy 18
  storew %.t2, $d
  %.t3 =w loadsw $c
  %.t4 =l copy $L3
  %.t5 =w call $printf(l %.t4, w %.t3, )
  %.t6 =l copy $c
  %.t7 =w copy 1
  %.t8 =l extsw %.t7
  %.t9 =l shl %.t8, 2
  %.t6 =l add %.t6, %.t9
  storel %.t6, $e
  %.t10 =l loadl $e
  %.t11 =w loadsw %.t10
  storew %.t11, $f
  %.t12 =w loadsw $f
  %.t13 =l copy $L4
  %.t14 =w call $printf(l %.t13, w %.t12, )
  %.t15 =w copy 0
  %.ret =w copy %.t15
  jmp @L2
@L2
  ret %.ret
}
