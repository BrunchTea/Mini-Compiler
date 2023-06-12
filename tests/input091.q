export data $fred = align 4 { w 1, w 2, w 3, w 4, w 5, }
export data $jim = align 4 { w 1, w 2, w 3, w 4, w 5, w 0, w 0, w 0, w 0, w 0, }
data $L19 = { b 37, b 100, b 10,  b 0 }
data $L20 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L21
  %.t1 =w copy 0
  %i =w copy %.t1
@L22
  %.t2 =w copy %i
  %.t3 =w copy 5
  %.t4 =w csltw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L23, @L24
@L24
  %.t7 =l copy $fred
  %.t8 =w copy %i
  %.t9 =l extsw %.t8
  %.t10 =l shl %.t9, 2
  %.t7 =l add %.t7, %.t10
  %.t11 =w loadsw %.t7
  %.t12 =l copy $L19
  %.t13 =w call $printf(l %.t12, w %.t11, )
  %.t14 =w copy %i
  %i =w add %i, 1
  jmp @L22
@L23
  %.t15 =w copy 0
  %i =w copy %.t15
@L25
  %.t16 =w copy %i
  %.t17 =w copy 10
  %.t18 =w csltw %.t16, %.t17
  %.t19 =w copy 1
  %.t20 =w cnew %.t18, %.t19
  jnz %.t20, @L26, @L27
@L27
  %.t21 =l copy $jim
  %.t22 =w copy %i
  %.t23 =l extsw %.t22
  %.t24 =l shl %.t23, 2
  %.t21 =l add %.t21, %.t24
  %.t25 =w loadsw %.t21
  %.t26 =l copy $L20
  %.t27 =w call $printf(l %.t26, w %.t25, )
  %.t28 =w copy %i
  %i =w add %i, 1
  jmp @L25
@L26
  %.t29 =w copy 0
  %.ret =w copy %.t29
  jmp @L18
@L18
  ret %.ret
}
