data $L19 = { b 37, b 100, b 10,  b 0 }
data $L20 = { b 37, b 100, b 32, b 37, b 99, b 10,  b 0 }
export function w $main() {
@L21
  %ary =l alloc8 13
  %z =l alloc4 1
  %.t1 =w copy 72
  storew %.t1, %z
  %.t2 =w copy 0
  %i =w copy %.t2
@L22
  %.t3 =w copy %i
  %.t4 =w copy 5
  %.t5 =w csltw %.t3, %.t4
  %.t6 =w copy 1
  %.t7 =w cnew %.t5, %.t6
  jnz %.t7, @L23, @L24
@L24
  %.t8 =w copy %i
  %.t9 =w copy %i
  %.t8 =w mul %.t8, %.t9
  %.t10 =l copy %ary
  %.t11 =w copy %i
  %.t12 =l extsw %.t11
  %.t13 =l shl %.t12, 2
  %.t10 =l add %.t10, %.t13
  storew %.t8, %.t10
  %.t14 =w copy %i
  %i =w add %i, 1
  jmp @L22
@L23
  %.t15 =w copy 14
  %i =w copy %.t15
  %.t16 =w copy 0
  %i =w copy %.t16
@L25
  %.t17 =w copy %i
  %.t18 =w copy 5
  %.t19 =w csltw %.t17, %.t18
  %.t20 =w copy 1
  %.t21 =w cnew %.t19, %.t20
  jnz %.t21, @L26, @L27
@L27
  %.t22 =l copy %ary
  %.t23 =w copy %i
  %.t24 =l extsw %.t23
  %.t25 =l shl %.t24, 2
  %.t22 =l add %.t22, %.t25
  %.t26 =w loadsw %.t22
  %.t27 =l copy $L19
  %.t28 =w call $printf(l %.t27, w %.t26, )
  %.t29 =w copy %i
  %i =w add %i, 1
  jmp @L25
@L26
  %.t30 =w loadub %z
  %.t31 =w copy %i
  %.t32 =l copy $L20
  %.t33 =w call $printf(l %.t32, w %.t31, w %.t30, )
  %.t34 =w copy 0
  %.ret =w copy %.t34
  jmp @L18
@L18
  ret %.ret
}
