data $L19 = { b 37, b 100, b 32, b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
export function   $fred(w %.px, ) {
@L20
  %x =l alloc4 1
  storew %.px, %x
  %.t1 =w copy 2
  %a =w copy %.t1
  %.t2 =l copy %x
  %b =l copy %.t2
  %.t3 =l copy %b
  %.t4 =w loadsw %.t3
  %.t5 =w copy %a
  %.t6 =w loadsw %x
  %.t7 =l copy $L19
  %.t8 =w call $printf(l %.t7, w %.t6, w %.t5, w %.t4, )
@L18
  ret
}
export function w $main() {
@L22
  %.t9 =w copy 4
  call $fred(w %.t9, )
  %.t11 =w copy 0
  %.ret =w copy %.t11
  jmp @L21
@L21
  ret %.ret
}
