export function w $fred() {
@L3
  %.t1 =w copy 20
  %.ret =w copy %.t1
  jmp @L2
@L2
  ret %.ret
}
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L8
  %.t2 =w copy 10
  %.t3 =l copy $L5
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =w copy 15
  %.t6 =w call $fred(w %.t5, )
  %result =w copy %.t6
  %.t7 =w copy %result
  %.t8 =l copy $L6
  %.t9 =w call $printf(l %.t8, w %.t7, )
  %.t10 =w copy 15
  %.t11 =w call $fred(w %.t10, )
  %.t12 =w copy 10
  %.t11 =w add %.t11, %.t12
  %.t13 =l copy $L7
  %.t14 =w call $printf(l %.t13, w %.t11, )
  %.t15 =w copy 0
  %.ret =w copy %.t15
  jmp @L4
@L4
  ret %.ret
}
