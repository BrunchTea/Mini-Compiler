data $L19 = { b 48, b 120, b 37, b 120, b 10,  b 0 }
data $L20 = { b 48, b 120, b 37, b 108, b 120, b 10,  b 0 }
export function w $main() {
@L21
  %y =l alloc4 1
  %.t1 =w copy 65535
  %x =w copy %.t1
  %.t2 =w copy %x
 %.t3 =w copy %.t2
  storew %.t3, %y
  %.t4 =w loadub %y
  %.t5 =l copy $L19
  %.t6 =w call $printf(l %.t5, w %.t4, )
  %.t7 =w copy 0
  %.t9 =l extub %.t7
  %str =l copy %.t9
  %.t10 =l copy %str
  %.t12 =l copy $L20
  %.t13 =w call $printf(l %.t12, l %.t10, )
  %.t14 =w copy 0
  %.ret =w copy %.t14
  jmp @L18
@L18
  ret %.ret
}
