export data $x = align 4 { w 0, }
export data $y = align 4 { w 3, }
data $L19 = { b 37, b 100, b 10,  b 0 }
data $L20 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L21
  %.t1 =w loadsw $y
  %.t2 =w copy 3
  %.t3 =w cnew %.t1, %.t2
  %.t4 =w copy 1
  %.t5 =w cnew %.t3, %.t4
  jnz %.t5, @L22, @L24
@L24
  %.t7 =w copy 6
  %.t6 =w copy %.t7
  jmp @L23
@L22
  %.t8 =w copy 8
  %.t6 =w copy %.t8
@L23
  %.t9 =w extub %.t6
  storew %.t9, $x
  %.t10 =w loadsw $x
  %.t11 =l copy $L19
  %.t12 =w call $printf(l %.t11, w %.t10, )
  %.t13 =w loadsw $y
  %.t14 =w copy 3
  %.t15 =w ceqw %.t13, %.t14
  %.t16 =w copy 1
  %.t17 =w cnew %.t15, %.t16
  jnz %.t17, @L25, @L27
@L27
  %.t19 =w copy 6
  %.t18 =w copy %.t19
  jmp @L26
@L25
  %.t20 =w copy 8
  %.t18 =w copy %.t20
@L26
  %.t21 =w extub %.t18
  storew %.t21, $x
  %.t22 =w loadsw $x
  %.t23 =l copy $L20
  %.t24 =w call $printf(l %.t23, w %.t22, )
  %.t25 =w copy 0
  %.ret =w copy %.t25
  jmp @L18
@L18
  ret %.ret
}
