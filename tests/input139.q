export function w $same(w %x, ) {
@L19
  %.t1 =w copy %x
  %.ret =w copy %.t1
  jmp @L18
@L18
  ret %.ret
}
data $L21 = { b 115, b 97, b 109, b 101, b 32, b 97, b 112, b 112, b 97, b 114, b 101, b 110, b 116, b 108, b 121, b 10,  b 0 }
export function w $main() {
@L22
  %.t2 =w copy 3
  %a =w copy %.t2
  %.t3 =w copy %a
  %.t4 =w call $same(w %.t3, )
  %.t5 =l cnew %.t4, 0
  jnz %.t5, @L26, @L24
@L26
  %.t6 =w copy %a
  %.t7 =w call $same(w %.t6, )
  %.t8 =w copy %a
  %.t9 =w call $same(w %.t8, )
  %.t10 =w csgew %.t7, %.t9
  %.t11 =l cnew %.t10, 0
  jnz %.t11, @L27, @L24
@L27
  %.t10 =w copy 1
  jmp @L25
@L24
  %.t10 =w copy 0
@L25
  %.t12 =l cnew %.t10, 0
  jnz %.t12, @L28, @L23
@L28
  %.t13 =w copy 1
  %.t14 =w cnew %.t12, %.t13
  jnz %.t14, @L23, @L29
@L29
  %.t15 =l copy $L21
  %.t16 =w call $printf(l %.t15, )
@L23
  %.t17 =w copy 0
  %.ret =w copy %.t17
  jmp @L20
@L20
  ret %.ret
}
