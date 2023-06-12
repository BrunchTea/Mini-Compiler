data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
export function   $main() {
@L6
  %.t1 =w copy 36
  %.t2 =l copy $L3
  %.t3 =w call $printf(l %.t2, w %.t1, )
  %.t4 =w copy 10
  %.t5 =l copy $L4
  %.t6 =w call $printf(l %.t5, w %.t4, )
  %.t7 =w copy 25
  %.t8 =l copy $L5
  %.t9 =w call $printf(l %.t8, w %.t7, )
@L2
  ret
}
