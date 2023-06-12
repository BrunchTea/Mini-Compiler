data $L3 = { b 72, b 101, b 108, b 108, b 111, b 32, b 119, b 111, b 114, b 108, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L4
  %.t1 =w copy 23
  %.t2 =l copy $L3
  %.t3 =w call $printf(l %.t2, w %.t1, )
  %.t4 =w copy 0
  %.ret =w copy %.t4
  jmp @L2
@L2
  ret %.ret
}
