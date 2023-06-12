export function w $fred() {
@L3
  %.t1 =w copy 56
  %.ret =w copy %.t1
  jmp @L2
@L2
  ret %.ret
}
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
export function   $main() {
@L7
  %.t2 =w copy 23
  %.t3 =l copy $L5
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %dummy =w copy %.t4
  %.t5 =w copy 10
  %.t6 =w call $fred(w %.t5, )
  %result =w copy %.t6
  %.t7 =w copy %result
  %.t8 =l copy $L6
  %.t9 =w call $printf(l %.t8, w %.t7, )
  %dummy =w copy %.t9
@L4
  ret
}
