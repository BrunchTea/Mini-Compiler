data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
data $L8 = { b 37, b 100, b 10,  b 0 }
data $L9 = { b 37, b 100, b 10,  b 0 }
data $L10 = { b 37, b 100, b 10,  b 0 }
export function w $param8(w %a, w %b, w %c, w %d, w %e, w %f, w %g, w %h, ) {
@L11
  %.t1 =w copy %a
  %.t2 =l copy $L3
  %.t3 =w call $printf(l %.t2, w %.t1, )
  %.t4 =w copy %b
  %.t5 =l copy $L4
  %.t6 =w call $printf(l %.t5, w %.t4, )
  %.t7 =w copy %c
  %.t8 =l copy $L5
  %.t9 =w call $printf(l %.t8, w %.t7, )
  %.t10 =w copy %d
  %.t11 =l copy $L6
  %.t12 =w call $printf(l %.t11, w %.t10, )
  %.t13 =w copy %e
  %.t14 =l copy $L7
  %.t15 =w call $printf(l %.t14, w %.t13, )
  %.t16 =w copy %f
  %.t17 =l copy $L8
  %.t18 =w call $printf(l %.t17, w %.t16, )
  %.t19 =w copy %g
  %.t20 =l copy $L9
  %.t21 =w call $printf(l %.t20, w %.t19, )
  %.t22 =w copy %h
  %.t23 =l copy $L10
  %.t24 =w call $printf(l %.t23, w %.t22, )
  %.t25 =w copy 0
  %.ret =w copy %.t25
  jmp @L2
@L2
  ret %.ret
}
export function w $fred(w %a, w %b, w %c, ) {
@L13
  %.t26 =w copy %a
  %.t27 =w copy %b
  %.t26 =w add %.t26, %.t27
  %.t28 =w copy %c
  %.t26 =w add %.t26, %.t28
  %.ret =w copy %.t26
  jmp @L12
@L12
  ret %.ret
}
data $L15 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L16
  %.t29 =w copy 34
  %.t30 =w copy 21
  %.t31 =w copy 13
  %.t32 =w copy 8
  %.t33 =w copy 5
  %.t34 =w copy 3
  %.t35 =w copy 2
  %.t36 =w copy 1
  %.t37 =w call $param8(w %.t36, w %.t35, w %.t34, w %.t33, w %.t32, w %.t31, w %.t30, w %.t29, )
  %.t38 =w copy 4
  %.t39 =w copy 3
  %.t40 =w copy 2
  %.t41 =w call $fred(w %.t40, w %.t39, w %.t38, )
  %x =w copy %.t41
  %.t42 =w copy %x
  %.t43 =l copy $L15
  %.t44 =w call $printf(l %.t43, w %.t42, )
  %.t45 =w copy 0
  %.ret =w copy %.t45
  jmp @L14
@L14
  ret %.ret
}
