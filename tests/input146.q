data $L18 = { b 113, b 119, b 101, b 114, b 116, b 121, b 117, b 105, b 111, b 112,  b 0 }
export data $str = align 8 { l $L18, }
export data $list = align 4 { w 3, w 5, w 7, w 9, w 11, w 13, w 15, }
export data $lptr = align 8 { l 0, }
data $L20 = { b 37, b 99, b 10,  b 0 }
data $L21 = { b 37, b 99, b 10,  b 0 }
data $L22 = { b 37, b 99, b 10,  b 0 }
data $L23 = { b 37, b 99, b 10,  b 0 }
data $L24 = { b 37, b 99, b 10,  b 0 }
data $L25 = { b 37, b 99, b 10,  b 0 }
data $L26 = { b 37, b 99, b 10,  b 0 }
data $L27 = { b 37, b 99, b 10,  b 0 }
data $L28 = { b 37, b 99, b 10, b 10,  b 0 }
data $L29 = { b 37, b 100, b 10,  b 0 }
data $L30 = { b 37, b 100, b 10,  b 0 }
data $L31 = { b 37, b 100, b 10,  b 0 }
data $L32 = { b 37, b 100, b 10,  b 0 }
data $L33 = { b 37, b 100, b 10,  b 0 }
data $L34 = { b 37, b 100, b 10,  b 0 }
data $L35 = { b 37, b 100, b 10,  b 0 }
data $L36 = { b 37, b 100, b 10,  b 0 }
data $L37 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L38
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
  %.t29 =l loadl $str
  %.t30 =l loadl $str
  %.t30 =l add %.t30, 1
  storel %.t30, $str
  %.t31 =l loadl $str
  %.t32 =w loadub %.t31
  %.t33 =l copy $L25
  %.t34 =w call $printf(l %.t33, w %.t32, )
  %.t35 =l loadl $str
  %.t36 =l loadl $str
  %.t36 =l add %.t36, -1
  storel %.t36, $str
  %.t37 =l loadl $str
  %.t38 =w loadub %.t37
  %.t39 =l copy $L26
  %.t40 =w call $printf(l %.t39, w %.t38, )
  %.t42 =l loadl $str
  %.t42 =l add %.t42, 1
  storel %.t42, $str
  %.t41 =l loadl $str
  %.t43 =l loadl $str
  %.t44 =w loadub %.t43
  %.t45 =l copy $L27
  %.t46 =w call $printf(l %.t45, w %.t44, )
  %.t48 =l loadl $str
  %.t48 =l add %.t48, -1
  storel %.t48, $str
  %.t47 =l loadl $str
  %.t49 =l loadl $str
  %.t50 =w loadub %.t49
  %.t51 =l copy $L28
  %.t52 =w call $printf(l %.t51, w %.t50, )
  %.t53 =l copy $list
  storel %.t53, $lptr
  %.t54 =l loadl $lptr
  %.t55 =w loadsw %.t54
  %.t56 =l copy $L29
  %.t57 =w call $printf(l %.t56, w %.t55, )
  %.t58 =l loadl $lptr
  %.t59 =w copy 1
  %.t60 =l extsw %.t59
  %.t61 =l shl %.t60, 2
  %.t58 =l add %.t58, %.t61
  storel %.t58, $lptr
  %.t62 =l loadl $lptr
  %.t63 =w loadsw %.t62
  %.t64 =l copy $L30
  %.t65 =w call $printf(l %.t64, w %.t63, )
  %.t66 =l loadl $lptr
  %.t67 =w copy 1
  %.t68 =l extsw %.t67
  %.t69 =l shl %.t68, 2
  %.t66 =l add %.t66, %.t69
  storel %.t66, $lptr
  %.t70 =l loadl $lptr
  %.t71 =w loadsw %.t70
  %.t72 =l copy $L31
  %.t73 =w call $printf(l %.t72, w %.t71, )
  %.t74 =l loadl $lptr
  %.t75 =w copy 1
  %.t76 =l extsw %.t75
  %.t77 =l shl %.t76, 2
  %.t74 =l add %.t74, %.t77
  storel %.t74, $lptr
  %.t78 =l loadl $lptr
  %.t79 =w loadsw %.t78
  %.t80 =l copy $L32
  %.t81 =w call $printf(l %.t80, w %.t79, )
  %.t82 =l loadl $lptr
  %.t83 =w copy 1
  %.t84 =l extsw %.t83
  %.t85 =l shl %.t84, 2
  %.t82 =l sub %.t82, %.t85
  storel %.t82, $lptr
  %.t86 =l loadl $lptr
  %.t87 =w loadsw %.t86
  %.t88 =l copy $L33
  %.t89 =w call $printf(l %.t88, w %.t87, )
  %.t90 =l loadl $lptr
  %.t91 =l loadl $lptr
  %.t91 =l add %.t91, 4
  storel %.t91, $lptr
  %.t92 =l loadl $lptr
  %.t93 =w loadsw %.t92
  %.t94 =l copy $L34
  %.t95 =w call $printf(l %.t94, w %.t93, )
  %.t96 =l loadl $lptr
  %.t97 =l loadl $lptr
  %.t97 =l add %.t97, -4
  storel %.t97, $lptr
  %.t98 =l loadl $lptr
  %.t99 =w loadsw %.t98
  %.t100 =l copy $L35
  %.t101 =w call $printf(l %.t100, w %.t99, )
  %.t103 =l loadl $lptr
  %.t103 =l add %.t103, 4
  storel %.t103, $lptr
  %.t102 =l loadl $lptr
  %.t104 =l loadl $lptr
  %.t105 =w loadsw %.t104
  %.t106 =l copy $L36
  %.t107 =w call $printf(l %.t106, w %.t105, )
  %.t109 =l loadl $lptr
  %.t109 =l add %.t109, -4
  storel %.t109, $lptr
  %.t108 =l loadl $lptr
  %.t110 =l loadl $lptr
  %.t111 =w loadsw %.t110
  %.t112 =l copy $L37
  %.t113 =w call $printf(l %.t112, w %.t111, )
  %.t114 =w copy 0
  %.ret =w copy %.t114
  jmp @L19
@L19
  ret %.ret
}
