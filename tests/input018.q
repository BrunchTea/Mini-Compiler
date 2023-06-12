data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L5
  %.t1 =w copy 34
  %b =w copy %.t1
  %a =w copy %.t1
  %.t2 =w copy %a
  %.t3 =l copy $L3
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =w copy %b
  %.t6 =l copy $L4
  %.t7 =w call $printf(l %.t6, w %.t5, )
  %.t8 =w copy 0
  %.ret =w copy %.t8
  jmp @L2
@L2
  ret %.ret
}
