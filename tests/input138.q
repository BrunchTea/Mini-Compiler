export data $x = align 4 { w 0, }
export data $y = align 4 { w 0, }
export data $z = align 4 { w 0, }
export data $a = align 4 { w 1, }
export data $aptr = align 8 { l 0, }
data $L19 = { b 37, b 100, b 32, b 37, b 100, b 32, b 124, b 32, b 37, b 100, b 10,  b 0 }
data $L20 = { b 37, b 100, b 32, b 37, b 100, b 32, b 124, b 32, b 37, b 100, b 10,  b 0 }
data $L21 = { b 97, b 112, b 116, b 114, b 32, b 112, b 111, b 105, b 110, b 116, b 115, b 32, b 97, b 116, b 32, b 49, b 10,  b 0 }
data $L22 = { b 97, b 112, b 116, b 114, b 32, b 105, b 115, b 32, b 78, b 85, b 76, b 76, b 32, b 111, b 114, b 32, b 100, b 111, b 101, b 115, b 110, b 39, b 116, b 32, b 112, b 111, b 105, b 110, b 116, b 32, b 97, b 116, b 32, b 49, b 10,  b 0 }
data $L23 = { b 97, b 112, b 116, b 114, b 32, b 112, b 111, b 105, b 110, b 116, b 115, b 32, b 97, b 116, b 32, b 49, b 10,  b 0 }
data $L24 = { b 97, b 112, b 116, b 114, b 32, b 105, b 115, b 32, b 78, b 85, b 76, b 76, b 32, b 111, b 114, b 32, b 100, b 111, b 101, b 115, b 110, b 39, b 116, b 32, b 112, b 111, b 105, b 110, b 116, b 32, b 97, b 116, b 32, b 49, b 10,  b 0 }
export function w $main() {
@L25
  %.t1 =w copy 0
  storew %.t1, $x
@L26
  %.t2 =w loadsw $x
  %.t3 =w copy 1
  %.t4 =w cslew %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L27, @L28
@L28
  %.t7 =w copy 0
  storew %.t7, $y
@L29
  %.t8 =w loadsw $y
  %.t9 =w copy 1
  %.t10 =w cslew %.t8, %.t9
  %.t11 =w copy 1
  %.t12 =w cnew %.t10, %.t11
  jnz %.t12, @L30, @L31
@L31
  %.t13 =w loadsw $x
  %.t14 =l cnew %.t13, 0
  jnz %.t14, @L34, @L32
@L34
  %.t15 =w loadsw $y
  %.t16 =l cnew %.t15, 0
  jnz %.t16, @L35, @L32
@L35
  %.t15 =w copy 1
  jmp @L33
@L32
  %.t15 =w copy 0
@L33
  storew %.t15, $z
  %.t17 =w loadsw $z
  %.t18 =w loadsw $y
  %.t19 =w loadsw $x
  %.t20 =l copy $L19
  %.t21 =w call $printf(l %.t20, w %.t19, w %.t18, w %.t17, )
  %.t22 =w loadsw $y
  %.t23 =w loadsw $y
  %.t23 =w add %.t23, 1
  storew %.t23, $y
  jmp @L29
@L30
  %.t24 =w loadsw $x
  %.t25 =w loadsw $x
  %.t25 =w add %.t25, 1
  storew %.t25, $x
  jmp @L26
@L27
  %.t26 =w copy 0
  storew %.t26, $x
@L36
  %.t27 =w loadsw $x
  %.t28 =w copy 1
  %.t29 =w cslew %.t27, %.t28
  %.t30 =w copy 1
  %.t31 =w cnew %.t29, %.t30
  jnz %.t31, @L37, @L38
@L38
  %.t32 =w copy 0
  storew %.t32, $y
@L39
  %.t33 =w loadsw $y
  %.t34 =w copy 1
  %.t35 =w cslew %.t33, %.t34
  %.t36 =w copy 1
  %.t37 =w cnew %.t35, %.t36
  jnz %.t37, @L40, @L41
@L41
  %.t38 =w loadsw $x
  %.t39 =l cnew %.t38, 0
  jnz %.t39, @L42, @L44
@L44
  %.t40 =w loadsw $y
  %.t41 =l cnew %.t40, 0
  jnz %.t41, @L42, @L45
@L45
  %.t40 =w copy 0
  jmp @L43
@L42
  %.t40 =w copy 1
@L43
  storew %.t40, $z
  %.t42 =w loadsw $z
  %.t43 =w loadsw $y
  %.t44 =w loadsw $x
  %.t45 =l copy $L20
  %.t46 =w call $printf(l %.t45, w %.t44, w %.t43, w %.t42, )
  %.t47 =w loadsw $y
  %.t48 =w loadsw $y
  %.t48 =w add %.t48, 1
  storew %.t48, $y
  jmp @L39
@L40
  %.t49 =w loadsw $x
  %.t50 =w loadsw $x
  %.t50 =w add %.t50, 1
  storew %.t50, $x
  jmp @L36
@L37
  %.t51 =w copy 0
  %.t53 =l extub %.t51
  storel %.t53, $aptr
  %.t54 =l loadl $aptr
  %.t55 =l cnel %.t54, 0
  jnz %.t55, @L50, @L48
@L50
  %.t56 =l loadl $aptr
  %.t57 =w loadsw %.t56
  %.t58 =w copy 1
  %.t59 =w ceqw %.t57, %.t58
  %.t60 =l cnew %.t59, 0
  jnz %.t60, @L51, @L48
@L51
  %.t59 =w copy 1
  jmp @L49
@L48
  %.t59 =w copy 0
@L49
  %.t61 =l cnew %.t59, 0
  jnz %.t61, @L52, @L46
@L52
  %.t62 =w copy 1
  %.t63 =w cnew %.t61, %.t62
  jnz %.t63, @L46, @L53
@L53
  %.t64 =l copy $L21
  %.t65 =w call $printf(l %.t64, )
@L54
  jmp @L47
@L46
  %.t66 =l copy $L22
  %.t67 =w call $printf(l %.t66, )
@L47
  %.t68 =l copy $a
  storel %.t68, $aptr
  %.t69 =l loadl $aptr
  %.t70 =l cnel %.t69, 0
  jnz %.t70, @L59, @L57
@L59
  %.t71 =l loadl $aptr
  %.t72 =w loadsw %.t71
  %.t73 =w copy 1
  %.t74 =w ceqw %.t72, %.t73
  %.t75 =l cnew %.t74, 0
  jnz %.t75, @L60, @L57
@L60
  %.t74 =w copy 1
  jmp @L58
@L57
  %.t74 =w copy 0
@L58
  %.t76 =l cnew %.t74, 0
  jnz %.t76, @L61, @L55
@L61
  %.t77 =w copy 1
  %.t78 =w cnew %.t76, %.t77
  jnz %.t78, @L55, @L62
@L62
  %.t79 =l copy $L23
  %.t80 =w call $printf(l %.t79, )
@L63
  jmp @L56
@L55
  %.t81 =l copy $L24
  %.t82 =w call $printf(l %.t81, )
@L56
  %.t83 =w copy 0
  %.ret =w copy %.t83
  jmp @L18
@L18
  ret %.ret
}
