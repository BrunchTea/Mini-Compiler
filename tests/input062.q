export data $var1 = align 8 { z 17, }
export data $varptr = align 8 { l 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 84, b 104, b 101, b 32, b 110, b 101, b 120, b 116, b 32, b 116, b 119, b 111, b 32, b 100, b 101, b 112, b 101, b 110, b 100, b 32, b 111, b 110, b 32, b 116, b 104, b 101, b 32, b 101, b 110, b 100, b 105, b 97, b 110, b 32, b 111, b 102, b 32, b 116, b 104, b 101, b 32, b 112, b 108, b 97, b 116, b 102, b 111, b 114, b 109, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
data $L8 = { b 37, b 100, b 10,  b 0 }
data $L9 = { b 37, b 100, b 10,  b 0 }
data $L10 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L11
  %.t1 =w copy 65
  %.t2 =l copy $var1
  %.t3 =l copy 0
  %.t2 =l add %.t2, %.t3
  storew %.t1, %.t2
  %.t4 =l copy $var1
  %.t5 =l copy 0
  %.t4 =l add %.t4, %.t5
  %.t6 =w loadsw %.t4
  %.t7 =l copy $L3
  %.t8 =w call $printf(l %.t7, w %.t6, )
  %.t9 =w copy 66
  %.t10 =l copy $var1
  %.t11 =l copy 0
  %.t10 =l add %.t10, %.t11
  storew %.t9, %.t10
  %.t12 =l copy $var1
  %.t13 =l copy 0
  %.t12 =l add %.t12, %.t13
  %.t14 =w loadsw %.t12
  %.t15 =l copy $L4
  %.t16 =w call $printf(l %.t15, w %.t14, )
  %.t17 =l copy $var1
  %.t18 =l copy 0
  %.t17 =l add %.t17, %.t18
  %.t19 =w loadsw %.t17
  %.t20 =l copy $L5
  %.t21 =w call $printf(l %.t20, w %.t19, )
  %.t22 =l copy $L6
  %.t23 =w call $printf(l %.t22, )
  %.t24 =l copy $var1
  %.t25 =l copy 0
  %.t24 =l add %.t24, %.t25
  %.t26 =w loadub %.t24
  %.t27 =l copy $L7
  %.t28 =w call $printf(l %.t27, w %.t26, )
  %.t29 =l copy $var1
  %.t30 =l copy 0
  %.t29 =l add %.t29, %.t30
  %.t31 =l loadl %.t29
  %.t32 =l copy $L8
  %.t33 =w call $printf(l %.t32, l %.t31, )
  %.t34 =l copy $var1
  storel %.t34, $varptr
  %.t35 =w copy 67
  %.t36 =l loadl $varptr
  %.t37 =l copy 0
  %.t36 =l add %.t36, %.t37
  storew %.t35, %.t36
  %.t38 =l loadl $varptr
  %.t39 =l copy 0
  %.t38 =l add %.t38, %.t39
  %.t40 =w loadsw %.t38
  %.t41 =l copy $L9
  %.t42 =w call $printf(l %.t41, w %.t40, )
  %.t43 =l loadl $varptr
  %.t44 =l copy 0
  %.t43 =l add %.t43, %.t44
  %.t45 =w loadsw %.t43
  %.t46 =l copy $L10
  %.t47 =w call $printf(l %.t46, w %.t45, )
  %.t48 =w copy 0
  %.ret =w copy %.t48
  jmp @L2
@L2
  ret %.ret
}
