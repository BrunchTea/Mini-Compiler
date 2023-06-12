export data $a = align 4 { w 1, }
export data $b = align 4 { w 2, }
export data $c = align 4 { w 3, }
export data $d = align 4 { w 4, }
export data $e = align 4 { w 5, }
export data $f = align 4 { w 6, }
export data $g = align 4 { w 7, }
export data $h = align 4 { w 8, }
data $L19 = { b 120, b 32, b 105, b 115, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =w loadsw $a
  %.t2 =w loadsw $b
  %.t1 =w add %.t1, %.t2
  %.t3 =w loadsw $c
  %.t1 =w add %.t1, %.t3
  %.t4 =w loadsw $d
  %.t1 =w add %.t1, %.t4
  %.t5 =w loadsw $e
  %.t1 =w add %.t1, %.t5
  %.t6 =w loadsw $f
  %.t1 =w add %.t1, %.t6
  %.t7 =w loadsw $g
  %.t1 =w add %.t1, %.t7
  %.t8 =w loadsw $h
  %.t1 =w add %.t1, %.t8
  %x =w copy %.t1
  %.t9 =w loadsw $a
  %.t10 =w loadsw $b
  %.t11 =w loadsw $c
  %.t12 =w loadsw $d
  %.t13 =w loadsw $e
  %.t14 =w loadsw $f
  %.t15 =w loadsw $g
  %.t16 =w loadsw $h
  %.t15 =w add %.t15, %.t16
  %.t14 =w add %.t14, %.t15
  %.t13 =w add %.t13, %.t14
  %.t12 =w add %.t12, %.t13
  %.t11 =w add %.t11, %.t12
  %.t10 =w add %.t10, %.t11
  %.t9 =w add %.t9, %.t10
  %x =w copy %.t9
  %.t17 =w copy %x
  %.t18 =l copy $L19
  %.t19 =w call $printf(l %.t18, w %.t17, )
  %.t20 =w copy 0
  %.ret =w copy %.t20
  jmp @L18
@L18
  ret %.ret
}
