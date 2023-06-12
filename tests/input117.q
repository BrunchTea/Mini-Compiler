data $L19 = { b 72, b 101, b 108, b 108, b 111,  b 0 }
function l $fred() {
@L20
  %.t1 =l copy $L19
  %.ret =l copy %.t1
  jmp @L18
@L18
  ret %.ret
}
data $L22 = { b 37, b 115, b 10,  b 0 }
export function w $main() {
@L23
  %.t2 =l call $fred()
  %.t3 =l copy $L22
  %.t4 =w call $printf(l %.t3, l %.t2, )
  %.t5 =w copy 0
  %.ret =w copy %.t5
  jmp @L21
@L21
  ret %.ret
}
