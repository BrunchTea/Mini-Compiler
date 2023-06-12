data $L19 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =w copy 0
  %y =w copy %.t1
  %.t2 =w copy 0
  %x =w copy %.t2
@L21
  %.t3 =w copy %x
  %.t4 =w copy 5
  %.t5 =w csltw %.t3, %.t4
  %.t6 =w copy 1
  %.t7 =w cnew %.t5, %.t6
  jnz %.t7, @L22, @L23
@L23
  %.t8 =w copy %x
@L25
  %.t9 =w copy 1
  %.t10 =w cnew %.t8, %.t9
  jnz %.t10, @L26, @L30
@L30
  jmp @L29
@L29
  %.t11 =w copy 5
  %y =w copy %.t11
  jmp @L24
@L26
  %.t12 =w copy 2
  %.t13 =w cnew %.t8, %.t12
  jnz %.t13, @L27, @L32
@L32
  jmp @L31
@L31
  %.t14 =w copy 7
  %y =w copy %.t14
  jmp @L24
@L27
  %.t15 =w copy 3
  %.t16 =w cnew %.t8, %.t15
  jnz %.t16, @L28, @L34
@L34
  jmp @L33
@L33
  %.t17 =w copy 9
  %y =w copy %.t17
@L28
@L35
  %.t18 =w copy 100
  %y =w copy %.t18
@L24
  %.t19 =w copy %y
  %.t20 =l copy $L19
  %.t21 =w call $printf(l %.t20, w %.t19, )
  %.t22 =w copy %x
  %x =w add %x, 1
  jmp @L21
@L22
  %.t23 =w copy 0
  %.ret =w copy %.t23
  jmp @L18
@L18
  ret %.ret
}
