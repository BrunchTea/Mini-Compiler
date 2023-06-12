data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L5
  %a =l alloc8 1
  %d =l alloc8 1
  %.t1 =l copy %a
  %b =l copy %.t1
  %.t2 =w copy 19
  %.t3 =l copy %b
  storeb %.t2, %.t3
  %.t4 =w loadub %a
  %.t5 =l copy $L3
  %.t6 =w call $printf(l %.t5, w %.t4, )
  %.t7 =l copy %d
  %e =l copy %.t7
  %.t8 =w copy 12
  %.t9 =l copy %e
  storew %.t8, %.t9
  %.t10 =w loadsw %d
  %.t11 =l copy $L4
  %.t12 =w call $printf(l %.t11, w %.t10, )
  %.t13 =w copy 0
  %.ret =w copy %.t13
  jmp @L2
@L2
  ret %.ret
}
