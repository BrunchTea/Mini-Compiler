export data $fred = align 4 { w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, w 0, }
export data $mary = align 1 { b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, b 0, }
data $L19 = { b 79, b 75, b 10,  b 0 }
export function   $main() {
@L20
  %.t1 =l copy $L19
  %.t2 =w call $printf(l %.t1, )
@L18
  ret
}
