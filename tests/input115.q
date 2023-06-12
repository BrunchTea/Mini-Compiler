data $L19 = { b 37, b 108, b 100, b 10,  b 0 }
data $L20 = { b 37, b 108, b 100, b 10,  b 0 }
data $L21 = { b 37, b 108, b 100, b 10,  b 0 }
data $L22 = { b 37, b 108, b 100, b 10,  b 0 }
data $L23 = { b 37, b 108, b 100, b 10,  b 0 }
data $L24 = { b 37, b 108, b 100, b 10,  b 0 }
data $L25 = { b 37, b 108, b 100, b 10,  b 0 }
export function w $main() {
@L26
  %.t1 =w copy 1
  %.t2 =l copy $L19
  %.t3 =w call $printf(l %.t2, w %.t1, )
  %.t4 =w copy 4
  %.t5 =l copy $L20
  %.t6 =w call $printf(l %.t5, w %.t4, )
  %.t7 =w copy 8
  %.t8 =l copy $L21
  %.t9 =w call $printf(l %.t8, w %.t7, )
  %.t10 =w copy 8
  %.t11 =l copy $L22
  %.t12 =w call $printf(l %.t11, w %.t10, )
  %.t13 =w copy 13
  %.t14 =l copy $L23
  %.t15 =w call $printf(l %.t14, w %.t13, )
  %.t16 =w copy 64
  %.t17 =l copy $L24
  %.t18 =w call $printf(l %.t17, w %.t16, )
  %.t19 =w copy 48
  %.t20 =l copy $L25
  %.t21 =w call $printf(l %.t20, w %.t19, )
  %.t22 =w copy 0
  %.ret =w copy %.t22
  jmp @L18
@L18
  ret %.ret
}
