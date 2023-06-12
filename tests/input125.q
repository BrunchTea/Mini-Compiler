export data $ary = align 4 { w 0, w 0, w 0, w 0, w 0, }
export data $ptr = align 8 { l 0, }
export data $x = align 4 { w 0, }
data $L19 = { b 37, b 100, b 10,  b 0 }
data $L20 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L21
  %.t1 =w copy 2008
  %.t2 =l copy $ary
  %.t3 =w copy 3
  %.t4 =l extsw %.t3
  %.t5 =l shl %.t4, 2
  %.t2 =l add %.t2, %.t5
  storew %.t1, %.t2
  %.t6 =l copy $ary
  storel %.t6, $ptr
  %.t7 =l copy $ary
  %.t8 =w copy 3
  %.t9 =l extsw %.t8
  %.t10 =l shl %.t9, 2
  %.t7 =l add %.t7, %.t10
  %.t11 =w loadsw %.t7
  storew %.t11, $x
  %.t12 =w loadsw $x
  %.t13 =l copy $L19
  %.t14 =w call $printf(l %.t13, w %.t12, )
  %.t15 =l loadl $ptr
  %.t16 =w copy 3
  %.t17 =l extsw %.t16
  %.t18 =l shl %.t17, 2
  %.t15 =l add %.t15, %.t18
  %.t19 =w loadsw %.t15
  storew %.t19, $x
  %.t20 =w loadsw $x
  %.t21 =l copy $L20
  %.t22 =w call $printf(l %.t21, w %.t20, )
  %.t23 =w copy 0
  %.ret =w copy %.t23
  jmp @L18
@L18
  ret %.ret
}
