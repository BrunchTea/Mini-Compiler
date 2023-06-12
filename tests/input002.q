data $L3 = { b 37, b 100, b 10,  b 0 }
export function   $main() {
@L4
  %.t1 =w copy 5
  %fred =w copy %.t1
  %.t2 =w copy 12
  %jim =w copy %.t2
  %.t3 =w copy %fred
  %.t4 =w copy %jim
  %.t3 =w add %.t3, %.t4
  %.t5 =l copy $L3
  %.t6 =w call $printf(l %.t5, w %.t3, )
@L2
  ret
}
