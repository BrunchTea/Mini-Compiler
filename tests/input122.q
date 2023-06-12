export data $x = align 4 { w 0, }
export data $y = align 4 { w 0, }
export data $z1 = align 4 { w 0, }
export data $z2 = align 4 { w 0, }
data $L19 = { b 120, b 32, b 37, b 100, b 44, b 32, b 121, b 32, b 37, b 100, b 44, b 32, b 120, b 32, b 124, b 124, b 32, b 121, b 32, b 37, b 100, b 44, b 32, b 120, b 32, b 38, b 38, b 32, b 121, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =w copy 0
  storew %.t1, $x
@L21
  %.t2 =w loadsw $x
  %.t3 =w copy 1
  %.t4 =w cslew %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L22, @L23
@L23
  %.t7 =w copy 0
  storew %.t7, $y
@L24
  %.t8 =w loadsw $y
  %.t9 =w copy 1
  %.t10 =w cslew %.t8, %.t9
  %.t11 =w copy 1
  %.t12 =w cnew %.t10, %.t11
  jnz %.t12, @L25, @L26
@L26
  %.t13 =w loadsw $x
  %.t14 =l cnew %.t13, 0
  jnz %.t14, @L27, @L29
@L29
  %.t15 =w loadsw $y
  %.t16 =l cnew %.t15, 0
  jnz %.t16, @L27, @L30
@L30
  %.t15 =w copy 0
  jmp @L28
@L27
  %.t15 =w copy 1
@L28
  storew %.t15, $z1
  %.t17 =w loadsw $x
  %.t18 =l cnew %.t17, 0
  jnz %.t18, @L33, @L31
@L33
  %.t19 =w loadsw $y
  %.t20 =l cnew %.t19, 0
  jnz %.t20, @L34, @L31
@L34
  %.t19 =w copy 1
  jmp @L32
@L31
  %.t19 =w copy 0
@L32
  storew %.t19, $z2
  %.t21 =w loadsw $z2
  %.t22 =w loadsw $z1
  %.t23 =w loadsw $y
  %.t24 =w loadsw $x
  %.t25 =l copy $L19
  %.t26 =w call $printf(l %.t25, w %.t24, w %.t23, w %.t22, w %.t21, )
  %.t27 =w loadsw $y
  %.t28 =w loadsw $y
  %.t28 =w add %.t28, 1
  storew %.t28, $y
  jmp @L24
@L25
  %.t29 =w loadsw $x
  %.t30 =w loadsw $x
  %.t30 =w add %.t30, 1
  storew %.t30, $x
  jmp @L21
@L22
  %.t31 =w copy 0
  %.ret =w copy %.t31
  jmp @L18
@L18
  ret %.ret
}
