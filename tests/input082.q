data $L19 = { b 120, b 32, b 62, b 32, b 49, b 53, b 10,  b 0 }
data $L20 = { b 49, b 53, b 32, b 62, b 61, b 32, b 120, b 32, b 62, b 32, b 53, b 10,  b 0 }
data $L21 = { b 53, b 32, b 62, b 61, b 32, b 120, b 10,  b 0 }
export function w $main() {
@L22
  %.t1 =w copy 10
  %x =w copy %.t1
  %.t2 =w copy %x
  %.t3 =w copy 5
  %.t4 =w csgtw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L23, @L25
@L25
  %.t7 =w copy %x
  %.t8 =w copy 15
  %.t9 =w extub %.t8
  %.t10 =w csgtw %.t7, %.t9
  %.t11 =w copy 1
  %.t12 =w cnew %.t10, %.t11
  jnz %.t12, @L26, @L28
@L28
  %.t13 =l copy $L19
  %.t14 =w call $printf(l %.t13, )
@L29
  jmp @L27
@L26
  %.t15 =l copy $L20
  %.t16 =w call $printf(l %.t15, )
@L27
@L30
  jmp @L24
@L23
  %.t17 =l copy $L21
  %.t18 =w call $printf(l %.t17, )
@L24
  %.t19 =w copy 0
  %.ret =w copy %.t19
  jmp @L18
@L18
  ret %.ret
}
