export data $fred = align 4 { w 0, }
export data $mary = align 4 { w 0, }
export function w $main() {
@L2
  %.t1 =w copy 0
  %.ret =w copy %.t1
  jmp @L1
@L1
  ret %.ret
}
