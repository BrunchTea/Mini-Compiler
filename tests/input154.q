data $L19 = { b 37, b 100, b 32, b 37, b 108, b 100, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =w copy 5
  %x =w copy %.t1
  %.t2 =w copy %x
  %.t3 =l extsw %.t2
  %y =l copy %.t3
  %.t4 =l copy %y
 %.t5 =w copy %.t4
  %z =w copy %.t5
  %.t6 =w copy %z
  %.t7 =l copy %y
  %.t8 =w copy %x
  %.t9 =l copy $L19
  %.t10 =w call $printf(l %.t9, w %.t8, l %.t7, w %.t6, )
  %.t11 =w copy 0
  %.ret =w copy %.t11
  jmp @L18
@L18
  ret %.ret
}
