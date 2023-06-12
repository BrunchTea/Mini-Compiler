export data $a = align 1 { b 0, }
export data $b = align 1 { b 0, }
export data $c = align 1 { b 0, }
export data $d = align 4 { w 0, }
export data $e = align 4 { w 0, }
export data $f = align 4 { w 0, }
export data $g = align 8 { l 0, }
export data $h = align 8 { l 0, }
export data $i = align 8 { l 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
data $L8 = { b 37, b 100, b 10,  b 0 }
data $L9 = { b 37, b 100, b 10,  b 0 }
data $L10 = { b 37, b 100, b 10,  b 0 }
data $L11 = { b 37, b 100, b 10,  b 0 }
data $L12 = { b 37, b 100, b 10,  b 0 }
data $L13 = { b 37, b 100, b 10,  b 0 }
data $L14 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L15
  %.t1 =w copy 5
  storeb %.t1, $b
  %.t2 =w copy 7
  storeb %.t2, $c
  %.t3 =w loadub $b
  %.t4 =w loadub $c
  %.t5 =w loadub $c
  %.t5 =w add %.t5, 1
  storeb %.t5, $c
  %.t3 =w add %.t3, %.t4
  storeb %.t3, $a
  %.t6 =w loadub $a
  %.t7 =l copy $L3
  %.t8 =w call $printf(l %.t7, w %.t6, )
  %.t9 =w copy 5
  storew %.t9, $e
  %.t10 =w copy 7
  storew %.t10, $f
  %.t11 =w loadsw $e
  %.t12 =w loadsw $f
  %.t13 =w loadsw $f
  %.t13 =w add %.t13, 1
  storew %.t13, $f
  %.t11 =w add %.t11, %.t12
  storew %.t11, $d
  %.t14 =w loadsw $d
  %.t15 =l copy $L4
  %.t16 =w call $printf(l %.t15, w %.t14, )
  %.t17 =l copy 5
  storel %.t17, $h
  %.t18 =l copy 7
  storel %.t18, $i
  %.t19 =l loadl $h
  %.t20 =l loadl $i
  %.t21 =l loadl $i
  %.t21 =l add %.t21, 1
  storel %.t21, $i
  %.t19 =l add %.t19, %.t20
  storel %.t19, $g
  %.t22 =l loadl $g
  %.t23 =l copy $L5
  %.t24 =w call $printf(l %.t23, l %.t22, )
  %.t25 =w loadub $b
  %.t26 =w loadub $b
  %.t26 =w add %.t26, -1
  storeb %.t26, $b
  %.t27 =w loadub $c
  %.t25 =w add %.t25, %.t27
  storeb %.t25, $a
  %.t28 =w loadub $a
  %.t29 =l copy $L6
  %.t30 =w call $printf(l %.t29, w %.t28, )
  %.t31 =w loadsw $e
  %.t32 =w loadsw $e
  %.t32 =w add %.t32, -1
  storew %.t32, $e
  %.t33 =w loadsw $f
  %.t31 =w add %.t31, %.t33
  storew %.t31, $d
  %.t34 =w loadsw $d
  %.t35 =l copy $L7
  %.t36 =w call $printf(l %.t35, w %.t34, )
  %.t37 =l loadl $h
  %.t38 =l loadl $h
  %.t38 =l add %.t38, -1
  storel %.t38, $h
  %.t39 =l loadl $i
  %.t37 =l add %.t37, %.t39
  storel %.t37, $g
  %.t40 =l loadl $g
  %.t41 =l copy $L8
  %.t42 =w call $printf(l %.t41, l %.t40, )
  %.t44 =w loadub $b
  %.t44 =w add %.t44, 1
  storeb %.t44, $b
  %.t43 =w loadub $b
  %.t45 =w loadub $c
  %.t43 =w add %.t43, %.t45
  storeb %.t43, $a
  %.t46 =w loadub $a
  %.t47 =l copy $L9
  %.t48 =w call $printf(l %.t47, w %.t46, )
  %.t50 =w loadsw $e
  %.t50 =w add %.t50, 1
  storew %.t50, $e
  %.t49 =w loadsw $e
  %.t51 =w loadsw $f
  %.t49 =w add %.t49, %.t51
  storew %.t49, $d
  %.t52 =w loadsw $d
  %.t53 =l copy $L10
  %.t54 =w call $printf(l %.t53, w %.t52, )
  %.t56 =l loadl $h
  %.t56 =l add %.t56, 1
  storel %.t56, $h
  %.t55 =l loadl $h
  %.t57 =l loadl $i
  %.t55 =l add %.t55, %.t57
  storel %.t55, $g
  %.t58 =l loadl $g
  %.t59 =l copy $L11
  %.t60 =w call $printf(l %.t59, l %.t58, )
  %.t61 =w loadub $b
  %.t63 =w loadub $c
  %.t63 =w add %.t63, -1
  storeb %.t63, $c
  %.t62 =w loadub $c
  %.t61 =w mul %.t61, %.t62
  storeb %.t61, $a
  %.t64 =w loadub $a
  %.t65 =l copy $L12
  %.t66 =w call $printf(l %.t65, w %.t64, )
  %.t67 =w loadsw $e
  %.t69 =w loadsw $f
  %.t69 =w add %.t69, -1
  storew %.t69, $f
  %.t68 =w loadsw $f
  %.t67 =w mul %.t67, %.t68
  storew %.t67, $d
  %.t70 =w loadsw $d
  %.t71 =l copy $L13
  %.t72 =w call $printf(l %.t71, w %.t70, )
  %.t73 =l loadl $h
  %.t75 =l loadl $i
  %.t75 =l add %.t75, -1
  storel %.t75, $i
  %.t74 =l loadl $i
  %.t73 =l mul %.t73, %.t74
  storel %.t73, $g
  %.t76 =l loadl $g
  %.t77 =l copy $L14
  %.t78 =w call $printf(l %.t77, l %.t76, )
  %.t79 =w copy 0
  %.ret =w copy %.t79
  jmp @L2
@L2
  ret %.ret
}
