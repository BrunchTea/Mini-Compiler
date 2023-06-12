export function w $add(w %x, w %y, ) {
@L19
  %.t1 =w copy %x
  %.t2 =w copy %y
  %.t1 =w add %.t1, %.t2
  %.ret =w copy %.t1
  jmp @L18
@L18
  ret %.ret
}
data $L21 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L22
  %.t3 =w copy 3
  %.t4 =w copy 3
  %.t5 =w copy 2
  %.t6 =w call $add(w %.t5, w %.t4, )
  %.t3 =w mul %.t3, %.t6
  %.t7 =w copy 5
  %.t8 =w copy 6
  %.t9 =w copy 4
  %.t10 =w call $add(w %.t9, w %.t8, )
  %.t7 =w mul %.t7, %.t10
  %.t3 =w sub %.t3, %.t7
  %result =w copy %.t3
  %.t11 =w copy %result
  %.t12 =l copy $L21
  %.t13 =w call $printf(l %.t12, w %.t11, )
  %.t14 =w copy 0
  %.ret =w copy %.t14
  jmp @L20
@L20
  ret %.ret
}
