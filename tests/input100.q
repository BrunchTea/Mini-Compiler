data $L19 = { b 72, b 101, b 108, b 108, b 111, b 32, b 119, b 111, b 114, b 108, b 100,  b 0 }
data $L20 = { b 37, b 115, b 32, b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L21
  %.t1 =w copy 3
  %x =w copy %.t1
  %.t2 =w copy 14
  %y =w copy %.t2
  %.t3 =w copy 2
  %.t4 =w copy %x
  %.t3 =w mul %.t3, %.t4
  %.t5 =w copy %y
  %.t3 =w add %.t3, %.t5
  %z =w copy %.t3
  %.t6 =l copy $L19
  %str =l copy %.t6
  %.t7 =w copy %z
  %.t8 =w copy %x
  %.t9 =w copy %y
  %.t8 =w add %.t8, %.t9
  %.t10 =l copy %str
  %.t11 =l copy $L20
  %.t12 =w call $printf(l %.t11, l %.t10, w %.t8, w %.t7, )
  %.t13 =w copy 0
  %.ret =w copy %.t13
  jmp @L18
@L18
  ret %.ret
}
