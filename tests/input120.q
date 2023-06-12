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
  %.t9 =w csgtw %.t7, %.t8
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
  %.t17 =w copy 9
  %.t16 =w add %.t16, %.t17
  %.t12 =w copy %.t16
@L25
  storew %.t12, $x
  %.t18 =w loadsw $x
  %.t19 =l copy $L19
  %.t20 =w call $printf(l %.t19, w %.t18, )
  %.t21 =w loadsw $y
  %.t22 =w loadsw $y
  %.t22 =w add %.t22, 1
  storew %.t22, $y
  jmp @L21
@L22
  %.t23 =w copy 0
  %.ret =w copy %.t23
  jmp @L18
@L18
  ret %.ret
}
