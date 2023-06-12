data $L19 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =w copy 2029
  %x =w copy %.t1
  %.t2 =w copy %x
  %.t3 =l copy $L19
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =w copy 0
  %.ret =w copy %.t5
  jmp @L18
@L18
  ret %.ret
}
