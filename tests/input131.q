export function   $donothing() {
@L19
@L18
  ret
}
data $L21 = { b 68, b 111, b 105, b 110, b 103, b 32, b 110, b 111, b 116, b 104, b 105, b 110, b 103, b 46, b 46, b 46, b 32,  b 0 }
data $L22 = { b 110, b 111, b 116, b 104, b 105, b 110, b 103, b 32, b 100, b 111, b 110, b 101, b 10,  b 0 }
data $L23 = { b 120, b 32, b 105, b 115, b 32, b 110, b 111, b 119, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L24
  %.t1 =w copy 0
  %x =w copy %.t1
  %.t2 =l copy $L21
  %.t3 =w call $printf(l %.t2, )
  call $donothing()
  %.t5 =l copy $L22
  %.t6 =w call $printf(l %.t5, )
@L25
  %x =w add %x, 1
  %.t7 =w copy %x
  %.t8 =w copy 100
  %.t9 =w csltw %.t7, %.t8
  %.t10 =w copy 1
  %.t11 =w cnew %.t9, %.t10
  jnz %.t11, @L26, @L27
@L27
  jmp @L25
@L26
  %.t12 =w copy %x
  %.t13 =l copy $L23
  %.t14 =w call $printf(l %.t13, w %.t12, )
  %.t15 =w copy 0
  %.ret =w copy %.t15
  jmp @L20
@L20
  ret %.ret
}
