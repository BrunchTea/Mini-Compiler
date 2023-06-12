data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
export function   $main() {
@L8
  %.t1 =w copy 1
  %x =w copy %.t1
  %.t2 =w copy %x
  %.t3 =l copy $L3
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =w copy %x
  %.t6 =w copy 1
  %.t5 =w add %.t5, %.t6
  %x =w copy %.t5
  %.t7 =w copy %x
  %.t8 =l copy $L4
  %.t9 =w call $printf(l %.t8, w %.t7, )
  %.t10 =w copy %x
  %.t11 =w copy 1
  %.t10 =w add %.t10, %.t11
  %x =w copy %.t10
  %.t12 =w copy %x
  %.t13 =l copy $L5
  %.t14 =w call $printf(l %.t13, w %.t12, )
  %.t15 =w copy %x
  %.t16 =w copy 1
  %.t15 =w add %.t15, %.t16
  %x =w copy %.t15
  %.t17 =w copy %x
  %.t18 =l copy $L6
  %.t19 =w call $printf(l %.t18, w %.t17, )
  %.t20 =w copy %x
  %.t21 =w copy 1
  %.t20 =w add %.t20, %.t21
  %x =w copy %.t20
  %.t22 =w copy %x
  %.t23 =l copy $L7
  %.t24 =w call $printf(l %.t23, w %.t22, )
@L2
  ret
}
