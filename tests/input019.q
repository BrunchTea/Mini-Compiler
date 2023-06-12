export data $a = align 4 { w 0, }
export data $b = align 4 { w 0, }
export data $c = align 4 { w 0, }
export data $d = align 4 { w 0, }
export data $e = align 4 { w 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L4
  %.t1 =w copy 2
  storew %.t1, $a
  %.t2 =w copy 4
  storew %.t2, $b
  %.t3 =w copy 3
  storew %.t3, $c
  %.t4 =w copy 2
  storew %.t4, $d
  %.t5 =w loadsw $a
  %.t6 =w loadsw $b
  %.t5 =w add %.t5, %.t6
  %.t7 =w loadsw $c
  %.t8 =w loadsw $d
  %.t7 =w add %.t7, %.t8
  %.t5 =w mul %.t5, %.t7
  storew %.t5, $e
  %.t9 =w loadsw $e
  %.t10 =l copy $L3
  %.t11 =w call $printf(l %.t10, w %.t9, )
  %.t12 =w copy 0
  %.ret =w copy %.t12
  jmp @L2
@L2
  ret %.ret
}
