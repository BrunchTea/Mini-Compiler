export data $ary = align 4 { w 0, w 0, w 0, w 0, w 0, }
data $L19 = { b 37, b 100, b 10,  b 0 }
export function   $fred(l %ptr, ) {
@L20
  %.t1 =l copy %ptr
  %.t2 =w copy 3
  %.t3 =l extsw %.t2
  %.t4 =l shl %.t3, 2
  %.t1 =l add %.t1, %.t4
  %.t5 =w loadsw %.t1
  %.t6 =l copy $L19
  %.t7 =w call $printf(l %.t6, w %.t5, )
@L18
  ret
}
data $L22 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L23
  %.t8 =w copy 2008
  %.t9 =l copy $ary
  %.t10 =w copy 3
  %.t11 =l extsw %.t10
  %.t12 =l shl %.t11, 2
  %.t9 =l add %.t9, %.t12
  storew %.t8, %.t9
  %.t13 =l copy $ary
  %.t14 =w copy 3
  %.t15 =l extsw %.t14
  %.t16 =l shl %.t15, 2
  %.t13 =l add %.t13, %.t16
  %.t17 =w loadsw %.t13
  %.t18 =l copy $L22
  %.t19 =w call $printf(l %.t18, w %.t17, )
  %.t20 =l copy $ary
  call $fred(l %.t20, )
  %.t22 =w copy 0
  %.ret =w copy %.t22
  jmp @L21
@L21
  ret %.ret
}
