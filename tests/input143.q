export data $foo = align 1 { b 0, }
export data $a = align 8 { l 0, }
export data $b = align 8 { l 0, }
export data $c = align 8 { l 0, }
data $L19 = { b 79, b 110, b 101, b 32, b 111, b 102, b 32, b 116, b 104, b 101, b 32, b 116, b 104, b 114, b 101, b 101, b 32, b 105, b 115, b 32, b 78, b 85, b 76, b 76, b 10,  b 0 }
data $L20 = { b 79, b 110, b 101, b 32, b 111, b 102, b 32, b 116, b 104, b 101, b 32, b 116, b 104, b 114, b 101, b 101, b 32, b 105, b 115, b 32, b 78, b 85, b 76, b 76, b 10,  b 0 }
data $L21 = { b 79, b 110, b 101, b 32, b 111, b 102, b 32, b 116, b 104, b 101, b 32, b 116, b 104, b 114, b 101, b 101, b 32, b 105, b 115, b 32, b 78, b 85, b 76, b 76, b 10,  b 0 }
data $L22 = { b 79, b 110, b 101, b 32, b 111, b 102, b 32, b 116, b 104, b 101, b 32, b 116, b 104, b 114, b 101, b 101, b 32, b 105, b 115, b 32, b 78, b 85, b 76, b 76, b 10,  b 0 }
data $L23 = { b 65, b 108, b 108, b 32, b 32, b 116, b 104, b 114, b 101, b 101, b 32, b 32, b 97, b 114, b 101, b 32, b 110, b 111, b 110, b 45, b 78, b 85, b 76, b 76, b 10,  b 0 }
export function w $main() {
@L24
  %.t1 =w copy 0
  %.t3 =l extub %.t1
  storel %.t3, $c
  storel %.t3, $b
  storel %.t3, $a
  %.t4 =l loadl $a
  %.t5 =w copy 0
  %.t7 =l extub %.t5
  %.t8 =l ceql %.t4, %.t7
  %.t9 =l cnew %.t8, 0
  jnz %.t9, @L28, @L30
@L30
  %.t10 =l loadl $b
  %.t11 =w copy 0
  %.t13 =l extub %.t11
  %.t14 =l ceql %.t10, %.t13
  %.t15 =l cnew %.t14, 0
  jnz %.t15, @L28, @L31
@L31
  %.t14 =w copy 0
  jmp @L29
@L28
  %.t14 =w copy 1
@L29
  %.t16 =l cnew %.t14, 0
  jnz %.t16, @L26, @L32
@L32
  %.t17 =l loadl $c
  %.t18 =w copy 0
  %.t20 =l extub %.t18
  %.t21 =l ceql %.t17, %.t20
  %.t22 =l cnew %.t21, 0
  jnz %.t22, @L26, @L33
@L33
  %.t21 =w copy 0
  jmp @L27
@L26
  %.t21 =w copy 1
@L27
  %.t23 =l cnew %.t21, 0
  jnz %.t23, @L34, @L25
@L34
  %.t24 =w copy 1
  %.t25 =w cnew %.t23, %.t24
  jnz %.t25, @L25, @L35
@L35
  %.t26 =l copy $L19
  %.t27 =w call $printf(l %.t26, )
@L25
  %.t28 =l copy $foo
  storel %.t28, $a
  %.t29 =l loadl $a
  %.t30 =w copy 0
  %.t32 =l extub %.t30
  %.t33 =l ceql %.t29, %.t32
  %.t34 =l cnew %.t33, 0
  jnz %.t34, @L39, @L41
@L41
  %.t35 =l loadl $b
  %.t36 =w copy 0
  %.t38 =l extub %.t36
  %.t39 =l ceql %.t35, %.t38
  %.t40 =l cnew %.t39, 0
  jnz %.t40, @L39, @L42
@L42
  %.t39 =w copy 0
  jmp @L40
@L39
  %.t39 =w copy 1
@L40
  %.t41 =l cnew %.t39, 0
  jnz %.t41, @L37, @L43
@L43
  %.t42 =l loadl $c
  %.t43 =w copy 0
  %.t45 =l extub %.t43
  %.t46 =l ceql %.t42, %.t45
  %.t47 =l cnew %.t46, 0
  jnz %.t47, @L37, @L44
@L44
  %.t46 =w copy 0
  jmp @L38
@L37
  %.t46 =w copy 1
@L38
  %.t48 =l cnew %.t46, 0
  jnz %.t48, @L45, @L36
@L45
  %.t49 =w copy 1
  %.t50 =w cnew %.t48, %.t49
  jnz %.t50, @L36, @L46
@L46
  %.t51 =l copy $L20
  %.t52 =w call $printf(l %.t51, )
@L36
  %.t53 =l copy $foo
  storel %.t53, $b
  %.t54 =l loadl $a
  %.t55 =w copy 0
  %.t57 =l extub %.t55
  %.t58 =l ceql %.t54, %.t57
  %.t59 =l cnew %.t58, 0
  jnz %.t59, @L50, @L52
@L52
  %.t60 =l loadl $b
  %.t61 =w copy 0
  %.t63 =l extub %.t61
  %.t64 =l ceql %.t60, %.t63
  %.t65 =l cnew %.t64, 0
  jnz %.t65, @L50, @L53
@L53
  %.t64 =w copy 0
  jmp @L51
@L50
  %.t64 =w copy 1
@L51
  %.t66 =l cnew %.t64, 0
  jnz %.t66, @L48, @L54
@L54
  %.t67 =l loadl $c
  %.t68 =w copy 0
  %.t70 =l extub %.t68
  %.t71 =l ceql %.t67, %.t70
  %.t72 =l cnew %.t71, 0
  jnz %.t72, @L48, @L55
@L55
  %.t71 =w copy 0
  jmp @L49
@L48
  %.t71 =w copy 1
@L49
  %.t73 =l cnew %.t71, 0
  jnz %.t73, @L56, @L47
@L56
  %.t74 =w copy 1
  %.t75 =w cnew %.t73, %.t74
  jnz %.t75, @L47, @L57
@L57
  %.t76 =l copy $L21
  %.t77 =w call $printf(l %.t76, )
@L47
  %.t78 =l copy $foo
  storel %.t78, $c
  %.t79 =l loadl $a
  %.t80 =w copy 0
  %.t82 =l extub %.t80
  %.t83 =l ceql %.t79, %.t82
  %.t84 =l cnew %.t83, 0
  jnz %.t84, @L62, @L64
@L64
  %.t85 =l loadl $b
  %.t86 =w copy 0
  %.t88 =l extub %.t86
  %.t89 =l ceql %.t85, %.t88
  %.t90 =l cnew %.t89, 0
  jnz %.t90, @L62, @L65
@L65
  %.t89 =w copy 0
  jmp @L63
@L62
  %.t89 =w copy 1
@L63
  %.t91 =l cnew %.t89, 0
  jnz %.t91, @L60, @L66
@L66
  %.t92 =l loadl $c
  %.t93 =w copy 0
  %.t95 =l extub %.t93
  %.t96 =l ceql %.t92, %.t95
  %.t97 =l cnew %.t96, 0
  jnz %.t97, @L60, @L67
@L67
  %.t96 =w copy 0
  jmp @L61
@L60
  %.t96 =w copy 1
@L61
  %.t98 =l cnew %.t96, 0
  jnz %.t98, @L68, @L58
@L68
  %.t99 =w copy 1
  %.t100 =w cnew %.t98, %.t99
  jnz %.t100, @L58, @L69
@L69
  %.t101 =l copy $L22
  %.t102 =w call $printf(l %.t101, )
@L70
  jmp @L59
@L58
  %.t103 =l copy $L23
  %.t104 =w call $printf(l %.t103, )
@L59
  %.t105 =w copy 0
  %.ret =w copy %.t105
  jmp @L18
@L18
  ret %.ret
}
