export data $fred = align 8 { l 0, }
export data $jane = align 8 { z 20, }
data $L26 = { b 37, b 100, b 32, b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
data $L27 = { b 37, b 100, b 32, b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
data $L28 = { b 37, b 100, b 32, b 37, b 100, b 32, b 37, b 100, b 10, b 10,  b 0 }
data $L29 = { b 102, b 105, b 115, b 104,  b 0 }
data $L30 = { b 37, b 100, b 32, b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
data $L31 = { b 37, b 100, b 32, b 37, b 100, b 32, b 37, b 115, b 10,  b 0 }
export function w $main() {
@L32
  %.t1 =w copy 60
  %.t2 =l call $malloc(w %.t1, )
  storel %.t2, $fred
  %.t4 =w copy 1
  %.t5 =l loadl $fred
  %.t6 =l copy 0
  %.t5 =l add %.t5, %.t6
  storew %.t4, %.t5
  %.t7 =w copy 2
  %.t8 =l loadl $fred
  %.t9 =l copy 4
  %.t8 =l add %.t8, %.t9
  storew %.t7, %.t8
  %.t10 =w copy 0
  %.t12 =l extub %.t10
  %.t13 =l loadl $fred
  %.t14 =l copy 8
  %.t13 =l add %.t13, %.t14
  %.t15 =l copy 0
  %.t13 =l add %.t13, %.t15
  storel %.t12, %.t13
  %.t16 =w copy 3
  %.t17 =l loadl $fred
  %.t18 =l copy 8
  %.t17 =l add %.t17, %.t18
  %.t19 =l copy 8
  %.t17 =l add %.t17, %.t19
  storew %.t16, %.t17
  %.t20 =w copy 4
  %.t21 =l loadl $fred
  %.t22 =l copy 8
  %.t21 =l add %.t21, %.t22
  %.t23 =l copy 12
  %.t21 =l add %.t21, %.t23
  storew %.t20, %.t21
  %.t24 =w copy 0
  %.t26 =l extub %.t24
  %.t27 =l loadl $fred
  %.t28 =l copy 24
  %.t27 =l add %.t27, %.t28
  %.t29 =l copy 0
  %.t27 =l add %.t27, %.t29
  storel %.t26, %.t27
  %.t30 =w copy 5
  %.t31 =l loadl $fred
  %.t32 =l copy 24
  %.t31 =l add %.t31, %.t32
  %.t33 =l copy 8
  %.t31 =l add %.t31, %.t33
  storew %.t30, %.t31
  %.t34 =w copy 6
  %.t35 =l loadl $fred
  %.t36 =l copy 24
  %.t35 =l add %.t35, %.t36
  %.t37 =l copy 12
  %.t35 =l add %.t35, %.t37
  storew %.t34, %.t35
  %.t38 =w copy 0
  %.t40 =l extub %.t38
  %.t41 =l loadl $fred
  %.t42 =l copy 40
  %.t41 =l add %.t41, %.t42
  %.t43 =l copy 0
  %.t41 =l add %.t41, %.t43
  storel %.t40, %.t41
  %.t44 =w copy 7
  %.t45 =l loadl $fred
  %.t46 =l copy 40
  %.t45 =l add %.t45, %.t46
  %.t47 =l copy 8
  %.t45 =l add %.t45, %.t47
  storew %.t44, %.t45
  %.t48 =w copy 8
  %.t49 =l loadl $fred
  %.t50 =l copy 40
  %.t49 =l add %.t49, %.t50
  %.t51 =l copy 12
  %.t49 =l add %.t49, %.t51
  storew %.t48, %.t49
  %.t52 =w copy 9
  %.t53 =l loadl $fred
  %.t54 =l copy 56
  %.t53 =l add %.t53, %.t54
  storew %.t52, %.t53
  %.t55 =l loadl $fred
  %.t56 =l copy 8
  %.t55 =l add %.t55, %.t56
  %.t57 =l copy 8
  %.t55 =l add %.t55, %.t57
  %.t58 =w loadsw %.t55
  %.t59 =l loadl $fred
  %.t60 =l copy 4
  %.t59 =l add %.t59, %.t60
  %.t61 =w loadsw %.t59
  %.t62 =l loadl $fred
  %.t63 =l copy 0
  %.t62 =l add %.t62, %.t63
  %.t64 =w loadsw %.t62
  %.t65 =l copy $L26
  %.t66 =w call $printf(l %.t65, w %.t64, w %.t61, w %.t58, )
  %.t67 =l loadl $fred
  %.t68 =l copy 24
  %.t67 =l add %.t67, %.t68
  %.t69 =l copy 12
  %.t67 =l add %.t67, %.t69
  %.t70 =w loadsw %.t67
  %.t71 =l loadl $fred
  %.t72 =l copy 24
  %.t71 =l add %.t71, %.t72
  %.t73 =l copy 8
  %.t71 =l add %.t71, %.t73
  %.t74 =w loadsw %.t71
  %.t75 =l loadl $fred
  %.t76 =l copy 8
  %.t75 =l add %.t75, %.t76
  %.t77 =l copy 12
  %.t75 =l add %.t75, %.t77
  %.t78 =w loadsw %.t75
  %.t79 =l copy $L27
  %.t80 =w call $printf(l %.t79, w %.t78, w %.t74, w %.t70, )
  %.t81 =l loadl $fred
  %.t82 =l copy 56
  %.t81 =l add %.t81, %.t82
  %.t83 =w loadsw %.t81
  %.t84 =l loadl $fred
  %.t85 =l copy 40
  %.t84 =l add %.t84, %.t85
  %.t86 =l copy 12
  %.t84 =l add %.t84, %.t86
  %.t87 =w loadsw %.t84
  %.t88 =l loadl $fred
  %.t89 =l copy 40
  %.t88 =l add %.t88, %.t89
  %.t90 =l copy 8
  %.t88 =l add %.t88, %.t90
  %.t91 =w loadsw %.t88
  %.t92 =l copy $L28
  %.t93 =w call $printf(l %.t92, w %.t91, w %.t87, w %.t83, )
  %.t94 =w copy 16
  %.t95 =l call $malloc(w %.t94, )
  %.t97 =l copy $jane
  %.t98 =l copy 8
  %.t97 =l add %.t97, %.t98
  storel %.t95, %.t97
  %.t99 =w copy 1
  %.t100 =l copy $jane
  %.t101 =l copy 0
  %.t100 =l add %.t100, %.t101
  storew %.t99, %.t100
  %.t102 =w copy 2
  %.t103 =l copy $jane
  %.t104 =l copy 4
  %.t103 =l add %.t103, %.t104
  storew %.t102, %.t103
  %.t105 =w copy 4
  %.t106 =l copy $jane
  %.t107 =l copy 16
  %.t106 =l add %.t106, %.t107
  storew %.t105, %.t106
  %.t108 =l copy $L29
  %.t109 =l copy $jane
  %.t110 =l copy 8
  %.t109 =l add %.t109, %.t110
  %.t111 =l loadl %.t109
  %.t112 =l copy 0
  %.t111 =l add %.t111, %.t112
  storel %.t108, %.t111
  %.t113 =w copy 3
  %.t114 =l copy $jane
  %.t115 =l copy 8
  %.t114 =l add %.t114, %.t115
  %.t116 =l loadl %.t114
  %.t117 =l copy 8
  %.t116 =l add %.t116, %.t117
  storew %.t113, %.t116
  %.t118 =w copy 5
  %.t119 =l copy $jane
  %.t120 =l copy 8
  %.t119 =l add %.t119, %.t120
  %.t121 =l loadl %.t119
  %.t122 =l copy 12
  %.t121 =l add %.t121, %.t122
  storew %.t118, %.t121
  %.t123 =l copy $jane
  %.t124 =l copy 8
  %.t123 =l add %.t123, %.t124
  %.t125 =l loadl %.t123
  %.t126 =l copy 8
  %.t125 =l add %.t125, %.t126
  %.t127 =w loadsw %.t125
  %.t128 =l copy $jane
  %.t129 =l copy 4
  %.t128 =l add %.t128, %.t129
  %.t130 =w loadsw %.t128
  %.t131 =l copy $jane
  %.t132 =l copy 0
  %.t131 =l add %.t131, %.t132
  %.t133 =w loadsw %.t131
  %.t134 =l copy $L30
  %.t135 =w call $printf(l %.t134, w %.t133, w %.t130, w %.t127, )
  %.t136 =l copy $jane
  %.t137 =l copy 8
  %.t136 =l add %.t136, %.t137
  %.t138 =l loadl %.t136
  %.t139 =l copy 0
  %.t138 =l add %.t138, %.t139
  %.t140 =l loadl %.t138
  %.t141 =l copy $jane
  %.t142 =l copy 8
  %.t141 =l add %.t141, %.t142
  %.t143 =l loadl %.t141
  %.t144 =l copy 12
  %.t143 =l add %.t143, %.t144
  %.t145 =w loadsw %.t143
  %.t146 =l copy $jane
  %.t147 =l copy 16
  %.t146 =l add %.t146, %.t147
  %.t148 =w loadsw %.t146
  %.t149 =l copy $L31
  %.t150 =w call $printf(l %.t149, w %.t148, w %.t145, l %.t140, )
  %.t151 =w copy 0
  %.ret =w copy %.t151
  jmp @L25
@L25
  ret %.ret
}
