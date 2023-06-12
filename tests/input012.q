export function w $fred() {
@L3
  %.t1 =w copy 5
  %.ret =w copy %.t1
  jmp @L2
@L2
  ret %.ret
}
data $L5 = { b 37, b 100, b 10,  b 0 }
export function   $main() {
@L6
  %.t2 =w copy 2
  %.t3 =w call $fred(w %.t2, )
  %x =w copy %.t3
  %.t4 =w copy %x
  %.t5 =l copy $L5
  %.t6 =w call $printf(l %.t5, w %.t4, )
@L4
  ret
}
