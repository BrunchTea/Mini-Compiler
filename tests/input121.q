export data $x = align 4 { w 0, }
export data $y = align 4 { w 3, }
data $L19 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =w copy 0
  storew %.t1, $y
@L21
  %.t2 =w loadsw $y
  %.t3 =w copy 10
  %.t4 =w csltw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L22, @L23
@L23
  %.t7 =w loadsw $y
  %.t8 =w copy 4
  %.t9 =w csltw %.t7, %.t8
  %.t10 =w copy 1
  %.t11 =w cnew %.t9, %.t10
  jnz %.t11, @L24, @L26
@L26
  %.t13 =w loadsw $y
  %.t14 =w copy 2
  %.t15 =w extub %.t14
  %.t13 =w add %.t13, %.t15
  %.t12 =w copy %.t13
  jmp @L25
@L24
  %.t16 =w loadsw $y
  %.t17 =w copy 7
  %.t18 =w csgtw %.t16, %.t17
  %.t19 =w copy 1
  %.t20 =w cnew %.t18, %.t19
  jnz %.t20, @L27, @L29
@L29
  %.t22 =w copy 1000
  %.t21 =w copy %.t22
  jmp @L28
@L27
  %.t23 =w loadsw $y
  %.t24 =w copy 9
  %.t23 =w add %.t23, %.t24
  %.t21 =w copy %.t23
@L28
  %.t12 =w copy %.t21
@L25
  storew %.t12, $x
  %.t25 =w loadsw $x
  %.t26 =l copy $L19
  %.t27 =w call $printf(l %.t26, w %.t25, )
  %.t28 =w loadsw $y
  %.t29 =w loadsw $y
  %.t29 =w add %.t29, 1
  storew %.t29, $y
  jmp @L21
@L22
  %.t30 =w copy 0
  %.ret =w copy %.t30
  jmp @L18
@L18
  ret %.ret
}
