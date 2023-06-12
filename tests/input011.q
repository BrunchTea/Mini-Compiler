data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
data $L8 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L9
  %j =l alloc4 1
  %.t1 =w copy 10
  %i =w copy %.t1
  %.t2 =w copy %i
  %.t3 =l copy $L3
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =w copy 20
  storew %.t5, %j
  %.t6 =w loadub %j
  %.t7 =l copy $L4
  %.t8 =w call $printf(l %.t7, w %.t6, )
  %.t9 =l copy 30
  %k =l copy %.t9
  %.t10 =l copy %k
  %.t11 =l copy $L5
  %.t12 =w call $printf(l %.t11, l %.t10, )
  %.t13 =w copy 1
  %i =w copy %.t13
@L10
  %.t14 =w copy %i
  %.t15 =w copy 5
  %.t16 =w cslew %.t14, %.t15
  %.t17 =w copy 1
  %.t18 =w cnew %.t16, %.t17
  jnz %.t18, @L11, @L12
@L12
  %.t19 =w copy %i
  %.t20 =l copy $L6
  %.t21 =w call $printf(l %.t20, w %.t19, )
  %.t22 =w copy %i
  %.t23 =w copy 1
  %.t22 =w add %.t22, %.t23
  %i =w copy %.t22
  jmp @L10
@L11
  %.t24 =w copy 253
  storew %.t24, %j
@L13
  %.t25 =w loadub %j
  %.t26 =w copy 4
  %.t27 =w cnew %.t25, %.t26
  %.t28 =w copy 1
  %.t29 =w cnew %.t27, %.t28
  jnz %.t29, @L14, @L15
@L15
  %.t30 =w loadub %j
  %.t31 =l copy $L7
  %.t32 =w call $printf(l %.t31, w %.t30, )
  %.t33 =w loadub %j
  %.t34 =w copy 1
  %.t33 =w add %.t33, %.t34
  storew %.t33, %j
  jmp @L13
@L14
  %.t35 =l copy 1
  %k =l copy %.t35
@L16
  %.t36 =l copy %k
  %.t37 =l copy 5
  %.t38 =l cslel %.t36, %.t37
  %.t39 =w copy 1
  %.t40 =w cnew %.t38, %.t39
  jnz %.t40, @L17, @L18
@L18
  %.t41 =l copy %k
  %.t42 =l copy $L8
  %.t43 =w call $printf(l %.t42, l %.t41, )
  %.t44 =l copy %k
  %.t45 =l copy 1
  %.t44 =l add %.t44, %.t45
  %k =l copy %.t44
  jmp @L16
@L17
  %.t46 =w copy %i
  %.ret =w copy %.t46
  jmp @L2
@L2
  ret %.ret
}
