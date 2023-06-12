data $L19 = { b 102, b 114, b 101, b 100, b 32, b 115, b 97, b 121, b 115, b 32, b 104, b 101, b 108, b 108, b 111, b 10,  b 0 }
export function   $fred() {
@L20
  %.t1 =l copy $L19
  %.t2 =w call $printf(l %.t1, )
@L18
  ret
}
export function w $main() {
@L22
  call $fred()
  %.t4 =w copy 0
  %.ret =w copy %.t4
  jmp @L21
@L21
  ret %.ret
}
