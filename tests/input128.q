export data $head = align 8 { z 12, }
export data $mid = align 8 { z 12, }
export data $tail = align 8 { z 12, }
data $L19 = { b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
data $L20 = { b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
data $L21 = { b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L22
  %.t1 =w copy 20
  %.t2 =l copy $tail
  %.t3 =l copy 0
  %.t2 =l add %.t2, %.t3
  storew %.t1, %.t2
  %.t4 =w copy 0
  %.t6 =l extub %.t4
  %.t7 =l copy $tail
  %.t8 =l copy 4
  %.t7 =l add %.t7, %.t8
  storel %.t6, %.t7
  %.t9 =w copy 15
  %.t10 =l copy $mid
  %.t11 =l copy 0
  %.t10 =l add %.t10, %.t11
  storew %.t9, %.t10
  %.t12 =l copy $tail
  %.t13 =l copy $mid
  %.t14 =l copy 4
  %.t13 =l add %.t13, %.t14
  storel %.t12, %.t13
  %.t15 =w copy 10
  %.t16 =l copy $head
  %.t17 =l copy 0
  %.t16 =l add %.t16, %.t17
  storew %.t15, %.t16
  %.t18 =l copy $mid
  %.t19 =l copy $head
  %.t20 =l copy 4
  %.t19 =l add %.t19, %.t20
  storel %.t18, %.t19
  %.t21 =l copy $head
  %ptr =l copy %.t21
  %.t22 =l copy %ptr
  %.t23 =l copy 0
  %.t22 =l add %.t22, %.t23
  %.t24 =w loadsw %.t22
  %.t25 =l copy $head
  %.t26 =l copy 0
  %.t25 =l add %.t25, %.t26
  %.t27 =w loadsw %.t25
  %.t28 =l copy $L19
  %.t29 =w call $printf(l %.t28, w %.t27, w %.t24, )
  %.t30 =l copy %ptr
  %.t31 =l copy 4
  %.t30 =l add %.t30, %.t31
  %.t32 =l loadl %.t30
  %.t33 =l copy 0
  %.t32 =l add %.t32, %.t33
  %.t34 =w loadsw %.t32
  %.t35 =l copy $mid
  %.t36 =l copy 0
  %.t35 =l add %.t35, %.t36
  %.t37 =w loadsw %.t35
  %.t38 =l copy $L20
  %.t39 =w call $printf(l %.t38, w %.t37, w %.t34, )
  %.t40 =l copy %ptr
  %.t41 =l copy 4
  %.t40 =l add %.t40, %.t41
  %.t42 =l loadl %.t40
  %.t43 =l copy 4
  %.t42 =l add %.t42, %.t43
  %.t44 =l loadl %.t42
  %.t45 =l copy 0
  %.t44 =l add %.t44, %.t45
  %.t46 =w loadsw %.t44
  %.t47 =l copy $tail
  %.t48 =l copy 0
  %.t47 =l add %.t47, %.t48
  %.t49 =w loadsw %.t47
  %.t50 =l copy $L21
  %.t51 =w call $printf(l %.t50, w %.t49, w %.t46, )
  %.t52 =w copy 0
  %.ret =w copy %.t52
  jmp @L18
@L18
  ret %.ret
}
