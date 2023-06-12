export data $a = align 4 { w 0, }
export data $b = align 8 { l 0, }
export data $c = align 1 { b 0, }
export data $d = align 8 { l 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L5
  %.t1 =l copy $a
  storel %.t1, $b
  %.t2 =w copy 15
  %.t3 =l loadl $b
  storew %.t2, %.t3
  %.t4 =w loadsw $a
  %.t5 =l copy $L3
  %.t6 =w call $printf(l %.t5, w %.t4, )
  %.t7 =l copy $c
  storel %.t7, $d
  %.t8 =w copy 16
  %.t9 =l loadl $d
  storeb %.t8, %.t9
  %.t10 =w loadub $c
  %.t11 =l copy $L4
  %.t12 =w call $printf(l %.t11, w %.t10, )
  %.t13 =w copy 0
  %.ret =w copy %.t13
  jmp @L2
@L2
  ret %.ret
}
