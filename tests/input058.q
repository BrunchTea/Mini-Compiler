export data $var2 = align 8 { z 13, }
export data $varptr = align 8 { l 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L8
  %.t1 =w copy 12
  %.t2 =l copy $var2
  %.t3 =l copy 0
  %.t2 =l add %.t2, %.t3
  storew %.t1, %.t2
  %.t4 =l copy $var2
  %.t5 =l copy 0
  %.t4 =l add %.t4, %.t5
  %.t6 =w loadsw %.t4
  %.t7 =l copy $L3
  %.t8 =w call $printf(l %.t7, w %.t6, )
  %.t9 =w copy 99
  %.t10 =l copy $var2
  %.t11 =l copy 4
  %.t10 =l add %.t10, %.t11
  storeb %.t9, %.t10
  %.t12 =l copy $var2
  %.t13 =l copy 4
  %.t12 =l add %.t12, %.t13
  %.t14 =w loadub %.t12
  %.t15 =l copy $L4
  %.t16 =w call $printf(l %.t15, w %.t14, )
  %.t17 =l copy 4005
  %.t18 =l copy $var2
  %.t19 =l copy 8
  %.t18 =l add %.t18, %.t19
  storel %.t17, %.t18
  %.t20 =l copy $var2
  %.t21 =l copy 8
  %.t20 =l add %.t20, %.t21
  %.t22 =l loadl %.t20
  %.t23 =l copy $L5
  %.t24 =w call $printf(l %.t23, l %.t22, )
  %.t25 =l copy $var2
  %.t26 =l copy 0
  %.t25 =l add %.t25, %.t26
  %.t27 =w loadsw %.t25
  %.t28 =l copy $var2
  %.t29 =l copy 4
  %.t28 =l add %.t28, %.t29
  %.t30 =w loadub %.t28
  %.t31 =w extub %.t30
  %.t27 =w add %.t27, %.t31
  %.t32 =l extsw %.t27
  %.t33 =l copy $var2
  %.t34 =l copy 8
  %.t33 =l add %.t33, %.t34
  %.t35 =l loadl %.t33
  %.t32 =l add %.t32, %.t35
  %result =l copy %.t32
  %.t36 =l copy %result
  %.t37 =l copy $L6
  %.t38 =w call $printf(l %.t37, l %.t36, )
  %.t39 =l copy $var2
  storel %.t39, $varptr
  %.t40 =l loadl $varptr
  %.t41 =l copy 0
  %.t40 =l add %.t40, %.t41
  %.t42 =w loadsw %.t40
  %.t43 =l loadl $varptr
  %.t44 =l copy 4
  %.t43 =l add %.t43, %.t44
  %.t45 =w loadub %.t43
  %.t46 =w extub %.t45
  %.t42 =w add %.t42, %.t46
  %.t47 =l extsw %.t42
  %.t48 =l loadl $varptr
  %.t49 =l copy 8
  %.t48 =l add %.t48, %.t49
  %.t50 =l loadl %.t48
  %.t47 =l add %.t47, %.t50
  %result =l copy %.t47
  %.t51 =l copy %result
  %.t52 =l copy $L7
  %.t53 =w call $printf(l %.t52, l %.t51, )
  %.t54 =w copy 0
  %.ret =w copy %.t54
  jmp @L2
@L2
  ret %.ret
}
