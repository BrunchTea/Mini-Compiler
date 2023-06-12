data $L19 = { b 37, b 100, b 10,  b 0 }
data $L20 = { b 68, b 111, b 110, b 101, b 10,  b 0 }
export function w $main() {
@L21
  %.t1 =w copy 0
  %x =w copy %.t1
@L22
  %.t2 =w copy %x
  %.t3 =w copy 100
  %.t4 =w csltw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L23, @L24
@L24
  %.t7 =w copy %x
  %.t8 =w copy 5
  %.t9 =w ceqw %.t7, %.t8
  %.t10 =w copy 1
  %.t11 =w cnew %.t9, %.t10
  jnz %.t11, @L25, @L26
@L26
  %.t12 =w copy %x
  %.t13 =w copy 2
  %.t14 =w extub %.t13
  %.t12 =w add %.t12, %.t14
  %x =w copy %.t12
  jmp @L22
@L25
  %.t15 =w copy %x
  %.t16 =l copy $L19
  %.t17 =w call $printf(l %.t16, w %.t15, )
  %.t18 =w copy %x
  %.t19 =w copy 14
  %.t20 =w ceqw %.t18, %.t19
  %.t21 =w copy 1
  %.t22 =w cnew %.t20, %.t21
  jnz %.t22, @L27, @L28
@L28
  jmp @L23
@L27
  %.t23 =w copy %x
  %.t24 =w copy 1
  %.t23 =w add %.t23, %.t24
  %x =w copy %.t23
  jmp @L22
@L23
  %.t25 =l copy $L20
  %.t26 =w call $printf(l %.t25, )
  %.t27 =w copy 0
  %.ret =w copy %.t27
  jmp @L18
@L18
  ret %.ret
}
