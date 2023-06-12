data $L18 = { b 113, b 119, b 101, b 114, b 116, b 121, b 117, b 105, b 111, b 112,  b 0 }
export data $str = align 8 { l $L18, }
export data $list = align 4 { w 3, w 5, w 7, w 9, w 11, w 13, w 15, }
export data $lptr = align 8 { l 0, }
data $L20 = { b 37, b 99, b 10,  b 0 }
data $L21 = { b 37, b 99, b 10,  b 0 }
data $L22 = { b 37, b 99, b 10,  b 0 }
data $L23 = { b 37, b 99, b 10,  b 0 }
data $L24 = { b 37, b 99, b 10,  b 0 }
data $L25 = { b 37, b 100, b 10,  b 0 }
data $L26 = { b 37, b 100, b 10,  b 0 }
data $L27 = { b 37, b 100, b 10,  b 0 }
data $L28 = { b 37, b 100, b 10,  b 0 }
data $L29 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L30
  %.t1 =l loadl $str
  %.t2 =w loadub %.t1
  %.t3 =l copy $L20
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =l loadl $str
  %.t6 =l copy 1
  %.t5 =l add %.t5, %.t6
  storel %.t5, $str
  %.t7 =l loadl $str
  %.t8 =w loadub %.t7
  %.t9 =l copy $L21
  %.t10 =w call $printf(l %.t9, w %.t8, )
  %.t11 =l loadl $str
  %.t12 =l copy 1
  %.t11 =l add %.t11, %.t12
  storel %.t11, $str
  %.t13 =l loadl $str
  %.t14 =w loadub %.t13
  %.t15 =l copy $L22
  %.t16 =w call $printf(l %.t15, w %.t14, )
  %.t17 =l loadl $str
  %.t18 =l copy 1
  %.t17 =l add %.t17, %.t18
  storel %.t17, $str
  %.t19 =l loadl $str
  %.t20 =w loadub %.t19
  %.t21 =l copy $L23
  %.t22 =w call $printf(l %.t21, w %.t20, )
  %.t23 =l loadl $str
  %.t24 =l copy 1
  %.t23 =l sub %.t23, %.t24
  storel %.t23, $str
  %.t25 =l loadl $str
  %.t26 =w loadub %.t25
  %.t27 =l copy $L24
  %.t28 =w call $printf(l %.t27, w %.t26, )
  %.t29 =l copy $list
  storel %.t29, $lptr
  %.t30 =l loadl $lptr
  %.t31 =w loadsw %.t30
  %.t32 =l copy $L25
  %.t33 =w call $printf(l %.t32, w %.t31, )
  %.t34 =l loadl $lptr
  %.t35 =w copy 1
  %.t36 =l extsw %.t35
  %.t37 =l shl %.t36, 2
  %.t34 =l add %.t34, %.t37
  storel %.t34, $lptr
  %.t38 =l loadl $lptr
  %.t39 =w loadsw %.t38
  %.t40 =l copy $L26
  %.t41 =w call $printf(l %.t40, w %.t39, )
  %.t42 =l loadl $lptr
  %.t43 =w copy 1
  %.t44 =l extsw %.t43
  %.t45 =l shl %.t44, 2
  %.t42 =l add %.t42, %.t45
  storel %.t42, $lptr
  %.t46 =l loadl $lptr
  %.t47 =w loadsw %.t46
  %.t48 =l copy $L27
  %.t49 =w call $printf(l %.t48, w %.t47, )
  %.t50 =l loadl $lptr
  %.t51 =w copy 1
  %.t52 =l extsw %.t51
  %.t53 =l shl %.t52, 2
  %.t50 =l add %.t50, %.t53
  storel %.t50, $lptr
  %.t54 =l loadl $lptr
  %.t55 =w loadsw %.t54
  %.t56 =l copy $L28
  %.t57 =w call $printf(l %.t56, w %.t55, )
  %.t58 =l loadl $lptr
  %.t59 =w copy 1
  %.t60 =l extsw %.t59
  %.t61 =l shl %.t60, 2
  %.t58 =l sub %.t58, %.t61
  storel %.t58, $lptr
  %.t62 =l loadl $lptr
  %.t63 =w loadsw %.t62
  %.t64 =l copy $L29
  %.t65 =w call $printf(l %.t64, w %.t63, )
  %.t66 =w copy 0
  %.ret =w copy %.t66
  jmp @L19
@L19
  ret %.ret
}
