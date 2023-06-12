data $L19 = { b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
data $L20 = { b 37, b 99, b 32, b 37, b 99, b 10,  b 0 }
export function w $main() {
@L21
  %a =l alloc8 1
  %.t1 =w copy 2
  %x =w copy %.t1
  %.t2 =w copy 3
  %y =w copy %.t2
  %.t3 =w copy %y
  %.t4 =w copy %x
  %.t5 =l copy $L19
  %.t6 =w call $printf(l %.t5, w %.t4, w %.t3, )
  %.t7 =w copy 102
  storew %.t7, %a
  %.t8 =l copy %a
  %b =l copy %.t8
  %.t9 =l copy %b
  %.t10 =w loadub %.t9
  %.t11 =w loadub %a
  %.t12 =l copy $L20
  %.t13 =w call $printf(l %.t12, w %.t11, w %.t10, )
  %.t14 =w copy 0
  %.ret =w copy %.t14
  jmp @L18
@L18
  ret %.ret
}
