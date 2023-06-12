data $L18 = { b 102, b 105, b 115, b 104,  b 0 }
data $L19 = { b 99, b 111, b 119,  b 0 }
export data $y = align 8 { l $L18, l $L19, l 0, }
export data $z = align 8 { l 0, }
data $L21 = { b 37, b 115, b 10,  b 0 }
data $L22 = { b 78, b 85, b 76, b 76, b 10,  b 0 }
export function w $main() {
@L23
  %.t1 =w copy 0
  %i =w copy %.t1
@L24
  %.t2 =w copy %i
  %.t3 =w copy 3
  %.t4 =w csltw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L25, @L26
@L26
  %.t7 =l copy $y
  %.t8 =w copy %i
  %.t9 =l extsw %.t8
  %.t10 =l shl %.t9, 3
  %.t7 =l add %.t7, %.t10
  %.t11 =l loadl %.t7
  %ptr =l copy %.t11
  %.t12 =l copy %ptr
  %.t13 =w copy 0
  %.t15 =l extub %.t13
  %.t16 =l cnel %.t12, %.t15
  %.t17 =w copy 1
  %.t18 =w cnew %.t16, %.t17
  jnz %.t18, @L27, @L29
@L29
  %.t19 =l copy $y
  %.t20 =w copy %i
  %.t21 =l extsw %.t20
  %.t22 =l shl %.t21, 3
  %.t19 =l add %.t19, %.t22
  %.t23 =l loadl %.t19
  %.t24 =l copy $L21
  %.t25 =w call $printf(l %.t24, l %.t23, )
@L30
  jmp @L28
@L27
  %.t26 =l copy $L22
  %.t27 =w call $printf(l %.t26, )
@L28
  %.t28 =w copy %i
  %i =w add %i, 1
  jmp @L24
@L25
  %.t29 =w copy 0
  %.ret =w copy %.t29
  jmp @L20
@L20
  ret %.ret
}
