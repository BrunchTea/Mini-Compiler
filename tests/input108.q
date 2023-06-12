export function w $main() {
@L2
  %.t1 =w copy 0
  %.t3 =l extub %.t1
  %str =l copy %.t3
  %.t4 =w copy 0
  %.ret =w copy %.t4
  jmp @L1
@L1
  ret %.ret
}
