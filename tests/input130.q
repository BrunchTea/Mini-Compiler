data $L18 = { b 102, b 111, b 111,  b 0 }
export data $x = align 8 { l $L18, }
data $L20 = { b 72, b 101, b 108, b 108, b 111, b 32, b 119, b 111, b 114, b 108, b 100, b 10,  b 0 }
export function w $main() {
@L23
  %.t1 =l copy $L20
  %.t2 =w call $printf(l %.t1, )
  %.t3 =w copy 0
  %.ret =w copy %.t3
  jmp @L19
@L19
  ret %.ret
}
