export data $y = align 8 { l 0, }
data $L19 = { b 48, b 120, b 37, b 108, b 120, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =l loadl $y
  %.t3 =l copy $L19
  %.t4 =w call $printf(l %.t3, l %.t1, )
  %.t5 =w copy 0
  %.ret =w copy %.t5
  jmp @L18
@L18
  ret %.ret
}
