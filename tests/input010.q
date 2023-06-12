data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
export function   $main() {
@L7
  %j =l alloc4 1
  %.t1 =w copy 20
  storew %.t1, %j
  %.t2 =w loadub %j
  %.t3 =l copy $L3
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =w copy 10
  %i =w copy %.t5
  %.t6 =w copy %i
  %.t7 =l copy $L4
  %.t8 =w call $printf(l %.t7, w %.t6, )
  %.t9 =w copy 1
  %i =w copy %.t9
@L8
  %.t10 =w copy %i
  %.t11 =w copy 5
  %.t12 =w cslew %.t10, %.t11
  %.t13 =w copy 1
  %.t14 =w cnew %.t12, %.t13
  jnz %.t14, @L9, @L10
@L10
  %.t15 =w copy %i
  %.t16 =l copy $L5
  %.t17 =w call $printf(l %.t16, w %.t15, )
  %.t18 =w copy %i
  %.t19 =w copy 1
  %.t18 =w add %.t18, %.t19
  %i =w copy %.t18
  jmp @L8
@L9
  %.t20 =w copy 253
  storew %.t20, %j
@L11
  %.t21 =w loadub %j
  %.t22 =w copy 2
  %.t23 =w cnew %.t21, %.t22
  %.t24 =w copy 1
  %.t25 =w cnew %.t23, %.t24
  jnz %.t25, @L12, @L13
@L13
  %.t26 =w loadub %j
  %.t27 =l copy $L6
  %.t28 =w call $printf(l %.t27, w %.t26, )
  %.t29 =w loadub %j
  %.t30 =w copy 1
  %.t29 =w add %.t29, %.t30
  storew %.t29, %j
  jmp @L11
@L12
@L2
  ret
}
