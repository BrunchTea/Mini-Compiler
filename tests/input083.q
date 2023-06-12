data $L19 = { b 49, b 48, b 32, b 60, b 32, b 37, b 50, b 100, b 10,  b 0 }
data $L20 = { b 32, b 53, b 32, b 60, b 32, b 37, b 50, b 100, b 32, b 60, b 61, b 32, b 49, b 48, b 10,  b 0 }
export function w $main() {
@L21
  %.t1 =w copy 0
  %x =w copy %.t1
@L22
  %.t2 =w copy %x
  %.t3 =w copy 12
  %.t4 =w csltw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L23, @L24
@L24
  %.t7 =w copy %x
  %.t8 =w copy 5
  %.t9 =w csgtw %.t7, %.t8
  %.t10 =w copy 1
  %.t11 =w cnew %.t9, %.t10
  jnz %.t11, @L25, @L26
@L26
  %.t12 =w copy %x
  %.t13 =w copy 10
  %.t14 =w extub %.t13
  %.t15 =w csgtw %.t12, %.t14
  %.t16 =w copy 1
  %.t17 =w cnew %.t15, %.t16
  jnz %.t17, @L27, @L29
@L29
  %.t18 =w copy %x
  %.t19 =l copy $L19
  %.t20 =w call $printf(l %.t19, w %.t18, )
@L30
  jmp @L28
@L27
  %.t21 =w copy %x
  %.t22 =l copy $L20
  %.t23 =w call $printf(l %.t22, w %.t21, )
@L28
@L25
  %.t24 =w copy %x
  %x =w add %x, 1
  jmp @L22
@L23
  %.t25 =w copy 0
  %.ret =w copy %.t25
  jmp @L18
@L18
  ret %.ret
}
