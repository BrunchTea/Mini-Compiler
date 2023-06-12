data $L19 = { b 116, b 101, b 115, b 116, b 105, b 110, b 103, b 32, b 120, b 10,  b 0 }
data $L20 = { b 120, b 32, b 98, b 101, b 108, b 111, b 119, b 32, b 53, b 10,  b 0 }
export function   $fred() {
@L21
  %.t1 =w copy 5
  %x =w copy %.t1
  %.t2 =l copy $L19
  %.t3 =w call $printf(l %.t2, )
  %.t4 =w copy %x
  %.t5 =w copy 4
  %.t6 =w csgtw %.t4, %.t5
  %.t7 =w copy 1
  %.t8 =w cnew %.t6, %.t7
  jnz %.t8, @L22, @L23
@L23
  jmp @L18
@L22
  %.t9 =l copy $L20
  %.t10 =w call $printf(l %.t9, )
@L18
  ret
}
export function w $main() {
@L25
  call $fred()
  %.t12 =w copy 0
  %.ret =w copy %.t12
  jmp @L24
@L24
  ret %.ret
}
