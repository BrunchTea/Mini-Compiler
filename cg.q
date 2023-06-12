export function   $cgtextseg() {
@L164
@L65
  ret
}
export function   $cgdataseg() {
@L165
@L66
  ret
}
data $L167 = { b 66, b 97, b 100, b 32, b 116, b 121, b 112, b 101, b 32, b 105, b 110, b 32, b 99, b 103, b 113, b 98, b 101, b 116, b 121, b 112, b 101, b 58,  b 0 }
export function w $cgqbetype(w %type, ) {
@L168
  %.t1 =w copy %type
  %.t2 =w call $ptrtype(w %.t1, )
  %.t3 =l cnew %.t2, 0
  jnz %.t3, @L170, @L169
@L170
  %.t4 =w copy 1
  %.t5 =w cnew %.t3, %.t4
  jnz %.t5, @L169, @L171
@L171
  %.t6 =w copy 108
  %.ret =w copy %.t6
  jmp @L166
@L169
  %.t7 =w copy %type
@L173
  %.t8 =w copy 16
  %.t9 =w cnew %.t7, %.t8
  jnz %.t9, @L174, @L179
@L179
  jmp @L178
@L178
  %.t10 =w copy 32
  %.ret =w copy %.t10
  jmp @L166
@L174
  %.t11 =w copy 32
  %.t12 =w cnew %.t7, %.t11
  jnz %.t12, @L175, @L181
@L181
  jmp @L180
@L180
  %.t13 =w copy 119
  %.ret =w copy %.t13
  jmp @L166
@L175
  %.t14 =w copy 48
  %.t15 =w cnew %.t7, %.t14
  jnz %.t15, @L176, @L183
@L183
  jmp @L182
@L182
  %.t16 =w copy 119
  %.ret =w copy %.t16
  jmp @L166
@L176
  %.t17 =w copy 64
  %.t18 =w cnew %.t7, %.t17
  jnz %.t18, @L177, @L185
@L185
  jmp @L184
@L184
  %.t19 =w copy 108
  %.ret =w copy %.t19
  jmp @L166
@L177
@L186
  %.t20 =w copy %type
  %.t21 =l copy $L167
  call $fatald(l %.t21, w %.t20, )
@L172
  %.t23 =w copy 0
  %.ret =w copy %.t23
  jmp @L166
@L166
  ret %.ret
}
data $L187 = { b 66, b 97, b 100, b 32, b 116, b 121, b 112, b 101, b 32, b 105, b 110, b 32, b 99, b 103, b 112, b 114, b 105, b 109, b 115, b 105, b 122, b 101, b 58,  b 0 }
export function w $cgprimsize(w %type, ) {
@L188
  %.t24 =w copy %type
  %.t25 =w call $ptrtype(w %.t24, )
  %.t26 =l cnew %.t25, 0
  jnz %.t26, @L190, @L189
@L190
  %.t27 =w copy 1
  %.t28 =w cnew %.t26, %.t27
  jnz %.t28, @L189, @L191
@L191
  %.t29 =w copy 8
  %.t30 =w extub %.t29
  %.ret =w copy %.t30
  jmp @L63
@L189
  %.t31 =w copy %type
@L193
  %.t32 =w copy 32
  %.t33 =w cnew %.t31, %.t32
  jnz %.t33, @L194, @L198
@L198
  jmp @L197
@L197
  %.t34 =w copy 1
  %.ret =w copy %.t34
  jmp @L63
@L194
  %.t35 =w copy 48
  %.t36 =w cnew %.t31, %.t35
  jnz %.t36, @L195, @L200
@L200
  jmp @L199
@L199
  %.t37 =w copy 4
  %.ret =w copy %.t37
  jmp @L63
@L195
  %.t38 =w copy 64
  %.t39 =w cnew %.t31, %.t38
  jnz %.t39, @L196, @L202
@L202
  jmp @L201
@L201
  %.t40 =w copy 8
  %.ret =w copy %.t40
  jmp @L63
@L196
@L203
  %.t41 =w copy %type
  %.t42 =l copy $L187
  call $fatald(l %.t42, w %.t41, )
@L192
  %.t44 =w copy 0
  %.ret =w copy %.t44
  jmp @L63
@L63
  ret %.ret
}
export function w $cgalign(w %type, w %offset, w %direction, ) {
@L204
  %.t45 =w copy %type
@L206
  %.t46 =w copy 32
  %.t47 =w cnew %.t45, %.t46
  jnz %.t47, @L207, @L209
@L209
  jmp @L208
@L208
  jmp @L205
@L207
@L210
  %.t48 =w copy 4
  %alignment =w copy %.t48
  %.t49 =w copy %offset
  %.t50 =w copy %direction
  %.t51 =w copy %alignment
  %.t52 =w copy 1
  %.t51 =w sub %.t51, %.t52
  %.t50 =w mul %.t50, %.t51
  %.t49 =w add %.t49, %.t50
  %.t53 =w copy %alignment
  %.t54 =w copy 1
  %.t53 =w sub %.t53, %.t54
  %.t53 =w xor %.t53, -1
  %.t49 =w and %.t49, %.t53
  %offset =w copy %.t49
@L205
  %.t55 =w copy %offset
  %.ret =w copy %.t55
  jmp @L64
@L64
  ret %.ret
}
data $nexttemp = align 4 { w 0, }
export function w $cgalloctemp() {
@L211
  %.t57 =w loadsw $nexttemp
  %.t57 =w add %.t57, 1
  storew %.t57, $nexttemp
  %.t56 =w loadsw $nexttemp
  %.ret =w copy %.t56
  jmp @L67
@L67
  ret %.ret
}
export function   $cgpreamble(l %filename, ) {
@L212
@L71
  ret
}
export function   $cgpostamble() {
@L213
@L72
  ret
}
data $used_switch = align 4 { w 0, }
data $L214 = { b 101, b 120, b 112, b 111, b 114, b 116, b 32,  b 0 }
data $L215 = { b 102, b 117, b 110, b 99, b 116, b 105, b 111, b 110, b 32, b 37, b 99, b 32, b 36, b 37, b 115, b 40,  b 0 }
data $L216 = { b 37, b 99, b 32, b 37, b 37, b 46, b 112, b 37, b 115, b 44, b 32,  b 0 }
data $L217 = { b 37, b 99, b 32, b 37, b 37, b 37, b 115, b 44, b 32,  b 0 }
data $L218 = { b 41, b 32, b 123, b 10,  b 0 }
data $L219 = { b 32, b 32, b 37, b 37, b 37, b 115, b 32, b 61, b 108, b 32, b 97, b 108, b 108, b 111, b 99, b 37, b 100, b 32, b 49, b 10,  b 0 }
data $L220 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 98, b 32, b 37, b 37, b 46, b 112, b 37, b 115, b 44, b 32, b 37, b 37, b 37, b 115, b 10,  b 0 }
data $L221 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 119, b 32, b 37, b 37, b 46, b 112, b 37, b 115, b 44, b 32, b 37, b 37, b 37, b 115, b 10,  b 0 }
data $L222 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 108, b 32, b 37, b 37, b 46, b 112, b 37, b 115, b 44, b 32, b 37, b 37, b 37, b 115, b 10,  b 0 }
data $L223 = { b 32, b 32, b 37, b 37, b 37, b 115, b 32, b 61, b 108, b 32, b 97, b 108, b 108, b 111, b 99, b 56, b 32, b 37, b 100, b 10,  b 0 }
data $L224 = { b 32, b 32, b 37, b 37, b 37, b 115, b 32, b 61, b 108, b 32, b 97, b 108, b 108, b 111, b 99, b 52, b 32, b 49, b 10,  b 0 }
export function   $cgfuncpreamble(l %sym, ) {
@L225
  %.t58 =l copy %sym
  %.t59 =l copy 0
  %.t58 =l add %.t58, %.t59
  %.t60 =l loadl %.t58
  %name =l copy %.t60
  %.t61 =l copy %sym
  %.t62 =l copy 24
  %.t61 =l add %.t61, %.t62
  %.t63 =w loadsw %.t61
  %.t64 =w copy 1
  %.t65 =w ceqw %.t63, %.t64
  %.t66 =w copy 1
  %.t67 =w cnew %.t65, %.t66
  jnz %.t67, @L226, @L227
@L227
  %.t68 =l copy $L214
  %.t69 =l loadl $Outfile
  %.t70 =w call $fprintf(l %.t69, l %.t68, )
@L226
  %.t71 =l copy %name
  %.t72 =l copy %sym
  %.t73 =l copy 8
  %.t72 =l add %.t72, %.t73
  %.t74 =w loadsw %.t72
  %.t75 =w call $cgqbetype(w %.t74, )
  %.t76 =l copy $L215
  %.t77 =l loadl $Outfile
  %.t78 =w call $fprintf(l %.t77, l %.t76, w %.t75, l %.t71, )
  %.t79 =l copy %sym
  %.t80 =l copy 56
  %.t79 =l add %.t79, %.t80
  %.t81 =l loadl %.t79
  %parm =l copy %.t81
@L228
  %.t82 =l copy %parm
  %.t83 =w copy 0
  %.t85 =l extub %.t83
  %.t86 =l cnel %.t82, %.t85
  %.t87 =w copy 1
  %.t88 =w cnew %.t86, %.t87
  jnz %.t88, @L229, @L230
@L230
  %.t89 =l copy %parm
  %.t90 =l copy 36
  %.t89 =l add %.t89, %.t90
  %.t91 =w loadsw %.t89
  %.t92 =w copy 1
  %.t93 =w ceqw %.t91, %.t92
  %.t94 =w copy 1
  %.t95 =w cnew %.t93, %.t94
  jnz %.t95, @L231, @L233
@L233
  %.t96 =l copy %parm
  %.t97 =l copy 0
  %.t96 =l add %.t96, %.t97
  %.t98 =l loadl %.t96
  %.t99 =l copy %parm
  %.t100 =l copy 8
  %.t99 =l add %.t99, %.t100
  %.t101 =w loadsw %.t99
  %.t102 =w call $cgqbetype(w %.t101, )
  %.t103 =l copy $L216
  %.t104 =l loadl $Outfile
  %.t105 =w call $fprintf(l %.t104, l %.t103, w %.t102, l %.t98, )
@L234
  jmp @L232
@L231
  %.t106 =l copy %parm
  %.t107 =l copy 0
  %.t106 =l add %.t106, %.t107
  %.t108 =l loadl %.t106
  %.t109 =l copy %parm
  %.t110 =l copy 8
  %.t109 =l add %.t109, %.t110
  %.t111 =w loadsw %.t109
  %.t112 =w call $cgqbetype(w %.t111, )
  %.t113 =l copy $L217
  %.t114 =l loadl $Outfile
  %.t115 =w call $fprintf(l %.t114, l %.t113, w %.t112, l %.t108, )
@L232
  %.t116 =l copy %parm
  %.t117 =l copy 48
  %.t116 =l add %.t116, %.t117
  %.t118 =l loadl %.t116
  %parm =l copy %.t118
  jmp @L228
@L229
  %.t119 =l copy $L218
  %.t120 =l loadl $Outfile
  %.t121 =w call $fprintf(l %.t120, l %.t119, )
  %.t122 =w call $genlabel()
  %label =w copy %.t122
  %.t123 =w copy %label
  call $cglabel(w %.t123, )
  %.t125 =l copy %sym
  %.t126 =l copy 56
  %.t125 =l add %.t125, %.t126
  %.t127 =l loadl %.t125
  %parm =l copy %.t127
@L235
  %.t128 =l copy %parm
  %.t129 =w copy 0
  %.t131 =l extub %.t129
  %.t132 =l cnel %.t128, %.t131
  %.t133 =w copy 1
  %.t134 =w cnew %.t132, %.t133
  jnz %.t134, @L236, @L237
@L237
  %.t135 =l copy %parm
  %.t136 =l copy 36
  %.t135 =l add %.t135, %.t136
  %.t137 =w loadsw %.t135
  %.t138 =w copy 1
  %.t139 =w ceqw %.t137, %.t138
  %.t140 =w copy 1
  %.t141 =w cnew %.t139, %.t140
  jnz %.t141, @L238, @L239
@L239
  %.t142 =l copy %parm
  %.t143 =l copy 8
  %.t142 =l add %.t142, %.t143
  %.t144 =w loadsw %.t142
  %.t145 =w call $cgprimsize(w %.t144, )
  %size =w copy %.t145
  %.t146 =w copy %size
  %.t147 =w copy 1
  %.t148 =w extub %.t147
  %.t149 =w ceqw %.t146, %.t148
  %.t150 =w copy 1
  %.t151 =w cnew %.t149, %.t150
  jnz %.t151, @L240, @L242
@L242
  %.t153 =w copy 4
  %.t152 =w copy %.t153
  jmp @L241
@L240
  %.t154 =w copy %size
  %.t152 =w copy %.t154
@L241
  %.t155 =w extub %.t152
  %bigsize =w copy %.t155
  %.t156 =w copy %bigsize
  %.t157 =l copy %parm
  %.t158 =l copy 0
  %.t157 =l add %.t157, %.t158
  %.t159 =l loadl %.t157
  %.t160 =l copy $L219
  %.t161 =l loadl $Outfile
  %.t162 =w call $fprintf(l %.t161, l %.t160, l %.t159, w %.t156, )
  %.t163 =w copy %size
@L244
  %.t164 =w copy 1
  %.t165 =w cnew %.t163, %.t164
  jnz %.t165, @L245, @L248
@L248
  jmp @L247
@L247
  %.t166 =l copy %parm
  %.t167 =l copy 0
  %.t166 =l add %.t166, %.t167
  %.t168 =l loadl %.t166
  %.t169 =l copy %parm
  %.t170 =l copy 0
  %.t169 =l add %.t169, %.t170
  %.t171 =l loadl %.t169
  %.t172 =l copy $L220
  %.t173 =l loadl $Outfile
  %.t174 =w call $fprintf(l %.t173, l %.t172, l %.t171, l %.t168, )
  jmp @L243
@L245
  %.t175 =w copy 4
  %.t176 =w cnew %.t163, %.t175
  jnz %.t176, @L246, @L250
@L250
  jmp @L249
@L249
  %.t177 =l copy %parm
  %.t178 =l copy 0
  %.t177 =l add %.t177, %.t178
  %.t179 =l loadl %.t177
  %.t180 =l copy %parm
  %.t181 =l copy 0
  %.t180 =l add %.t180, %.t181
  %.t182 =l loadl %.t180
  %.t183 =l copy $L221
  %.t184 =l loadl $Outfile
  %.t185 =w call $fprintf(l %.t184, l %.t183, l %.t182, l %.t179, )
  jmp @L243
@L246
  %.t186 =w copy 8
  %.t187 =w cnew %.t163, %.t186
  jnz %.t187, @L243, @L252
@L252
  jmp @L251
@L251
  %.t188 =l copy %parm
  %.t189 =l copy 0
  %.t188 =l add %.t188, %.t189
  %.t190 =l loadl %.t188
  %.t191 =l copy %parm
  %.t192 =l copy 0
  %.t191 =l add %.t191, %.t192
  %.t193 =l loadl %.t191
  %.t194 =l copy $L222
  %.t195 =l loadl $Outfile
  %.t196 =w call $fprintf(l %.t195, l %.t194, l %.t193, l %.t190, )
@L243
@L238
  %.t197 =l copy %parm
  %.t198 =l copy 48
  %.t197 =l add %.t197, %.t198
  %.t199 =l loadl %.t197
  %parm =l copy %.t199
  jmp @L235
@L236
  %.t200 =l loadl $Loclhead
  %locvar =l copy %.t200
@L253
  %.t201 =l copy %locvar
  %.t202 =w copy 0
  %.t204 =l extub %.t202
  %.t205 =l cnel %.t201, %.t204
  %.t206 =w copy 1
  %.t207 =w cnew %.t205, %.t206
  jnz %.t207, @L254, @L255
@L255
  %.t208 =l copy %locvar
  %.t209 =l copy 36
  %.t208 =l add %.t208, %.t209
  %.t210 =w loadsw %.t208
  %.t211 =w copy 1
  %.t212 =w ceqw %.t210, %.t211
  %.t213 =w copy 1
  %.t214 =w cnew %.t212, %.t213
  jnz %.t214, @L256, @L258
@L258
  %.t215 =l copy %locvar
  %.t216 =l copy 28
  %.t215 =l add %.t215, %.t216
  %.t217 =w loadsw %.t215
  %.t218 =l copy %locvar
  %.t219 =l copy 32
  %.t218 =l add %.t218, %.t219
  %.t220 =w loadsw %.t218
  %.t217 =w mul %.t217, %.t220
  %size =w copy %.t217
  %.t221 =w copy %size
  %.t222 =w copy 7
  %.t223 =w extub %.t222
  %.t221 =w add %.t221, %.t223
  %.t224 =w copy 3
  %.t225 =w extub %.t224
  %.t221 =w shr %.t221, %.t225
  %size =w copy %.t221
  %.t226 =w copy %size
  %.t227 =l copy %locvar
  %.t228 =l copy 0
  %.t227 =l add %.t227, %.t228
  %.t229 =l loadl %.t227
  %.t230 =l copy $L223
  %.t231 =l loadl $Outfile
  %.t232 =w call $fprintf(l %.t231, l %.t230, l %.t229, w %.t226, )
@L259
  jmp @L257
@L256
  %.t233 =l copy %locvar
  %.t234 =l copy 8
  %.t233 =l add %.t233, %.t234
  %.t235 =w loadsw %.t233
  %.t236 =w copy 32
  %.t237 =w ceqw %.t235, %.t236
  %.t238 =w copy 1
  %.t239 =w cnew %.t237, %.t238
  jnz %.t239, @L260, @L261
@L261
  %.t240 =w copy 1
  %.t241 =w extub %.t240
  %.t242 =l copy %locvar
  %.t243 =l copy 36
  %.t242 =l add %.t242, %.t243
  storew %.t241, %.t242
  %.t244 =l copy %locvar
  %.t245 =l copy 0
  %.t244 =l add %.t244, %.t245
  %.t246 =l loadl %.t244
  %.t247 =l copy $L224
  %.t248 =l loadl $Outfile
  %.t249 =w call $fprintf(l %.t248, l %.t247, l %.t246, )
@L260
@L257
  %.t250 =l copy %locvar
  %.t251 =l copy 48
  %.t250 =l add %.t250, %.t251
  %.t252 =l loadl %.t250
  %locvar =l copy %.t252
  jmp @L253
@L254
  %.t253 =w copy 0
  storew %.t253, $used_switch
@L73
  ret
}
data $L262 = { b 32, b 32, b 114, b 101, b 116, b 32, b 37, b 37, b 46, b 114, b 101, b 116, b 10, b 125, b 10,  b 0 }
data $L263 = { b 32, b 32, b 114, b 101, b 116, b 10, b 125, b 10,  b 0 }
export function   $cgfuncpostamble(l %sym, ) {
@L264
  %.t254 =l copy %sym
  %.t255 =l copy 36
  %.t254 =l add %.t254, %.t255
  %.t256 =w loadsw %.t254
  call $cglabel(w %.t256, )
  %.t258 =l copy %sym
  %.t259 =l copy 8
  %.t258 =l add %.t258, %.t259
  %.t260 =w loadsw %.t258
  %.t261 =w copy 16
  %.t262 =w cnew %.t260, %.t261
  %.t263 =w copy 1
  %.t264 =w cnew %.t262, %.t263
  jnz %.t264, @L265, @L267
@L267
  %.t265 =l copy $L262
  %.t266 =l loadl $Outfile
  %.t267 =w call $fprintf(l %.t266, l %.t265, )
@L268
  jmp @L266
@L265
  %.t268 =l copy $L263
  %.t269 =l loadl $Outfile
  %.t270 =w call $fprintf(l %.t269, l %.t268, )
@L266
@L74
  ret
}
data $L269 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 99, b 111, b 112, b 121, b 32, b 37, b 100, b 10,  b 0 }
export function w $cgloadint(w %value, w %type, ) {
@L270
  %.t271 =w call $cgalloctemp()
  %t =w copy %.t271
  %.t272 =w copy %value
  %.t273 =w copy %type
  %.t274 =w call $cgqbetype(w %.t273, )
  %.t275 =w copy %t
  %.t276 =l copy $L269
  %.t277 =l loadl $Outfile
  %.t278 =w call $fprintf(l %.t277, l %.t276, w %.t275, w %.t274, w %.t272, )
  %.t279 =w copy %t
  %.ret =w copy %.t279
  jmp @L75
@L75
  ret %.ret
}
data $L271 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 108, b 111, b 97, b 100, b 117, b 98, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L272 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 97, b 100, b 100, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
data $L273 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 98, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L274 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 108, b 111, b 97, b 100, b 115, b 119, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L275 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 97, b 100, b 100, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
data $L276 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 119, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L277 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 108, b 111, b 97, b 100, b 108, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L278 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 97, b 100, b 100, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
data $L279 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 108, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L280 = { b 32, b 32, b 37, b 99, b 37, b 115, b 32, b 61, b 37, b 99, b 32, b 97, b 100, b 100, b 32, b 37, b 99, b 37, b 115, b 44, b 32, b 37, b 100, b 10,  b 0 }
data $L281 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 108, b 111, b 97, b 100, b 117, b 98, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L282 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 108, b 111, b 97, b 100, b 115, b 119, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L283 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 108, b 111, b 97, b 100, b 108, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L284 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 99, b 111, b 112, b 121, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L285 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 108, b 111, b 97, b 100, b 117, b 98, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L286 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 97, b 100, b 100, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
data $L287 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 98, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L288 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 108, b 111, b 97, b 100, b 115, b 119, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L289 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 97, b 100, b 100, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
data $L290 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 119, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L291 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 108, b 111, b 97, b 100, b 108, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L292 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 97, b 100, b 100, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
data $L293 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 108, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
data $L294 = { b 32, b 32, b 37, b 99, b 37, b 115, b 32, b 61, b 37, b 99, b 32, b 97, b 100, b 100, b 32, b 37, b 99, b 37, b 115, b 44, b 32, b 37, b 100, b 10,  b 0 }
export function w $cgloadvar(l %sym, w %op, ) {
@L295
  %qbeprefix =l alloc4 1
  %.t280 =w copy 1
  %offset =w copy %.t280
  %.t281 =w call $cgalloctemp()
  %r =w copy %.t281
  %.t282 =l copy %sym
  %.t283 =l copy 8
  %.t282 =l add %.t282, %.t283
  %.t284 =w loadsw %.t282
  %.t285 =w call $ptrtype(w %.t284, )
  %.t286 =l cnew %.t285, 0
  jnz %.t286, @L297, @L296
@L297
  %.t287 =w copy 1
  %.t288 =w cnew %.t286, %.t287
  jnz %.t288, @L296, @L298
@L298
  %.t289 =l copy %sym
  %.t290 =l copy 12
  %.t289 =l add %.t289, %.t290
  %.t291 =l loadl %.t289
  %.t292 =l copy %sym
  %.t293 =l copy 8
  %.t292 =l add %.t292, %.t293
  %.t294 =w loadsw %.t292
  %.t295 =w call $value_at(w %.t294, )
  %.t296 =w call $typesize(w %.t295, l %.t291, )
  %offset =w copy %.t296
@L296
  %.t297 =w copy %op
  %.t298 =w copy 40
  %.t299 =w ceqw %.t297, %.t298
  %.t300 =l cnew %.t299, 0
  jnz %.t300, @L300, @L302
@L302
  %.t301 =w copy %op
  %.t302 =w copy 42
  %.t303 =w ceqw %.t301, %.t302
  %.t304 =l cnew %.t303, 0
  jnz %.t304, @L300, @L303
@L303
  %.t303 =w copy 0
  jmp @L301
@L300
  %.t303 =w copy 1
@L301
  %.t305 =l cnew %.t303, 0
  jnz %.t305, @L304, @L299
@L304
  %.t306 =w copy 1
  %.t307 =w cnew %.t305, %.t306
  jnz %.t307, @L299, @L305
@L305
  %.t308 =w copy %offset
  %.t308 =w sub 0, %.t308
  %offset =w copy %.t308
@L299
  %.t309 =l copy %sym
  %.t310 =l copy 24
  %.t309 =l add %.t309, %.t310
  %.t311 =w loadsw %.t309
  %.t312 =w copy 1
  %.t313 =w ceqw %.t311, %.t312
  %.t314 =l cnew %.t313, 0
  jnz %.t314, @L310, @L312
@L312
  %.t315 =l copy %sym
  %.t316 =l copy 24
  %.t315 =l add %.t315, %.t316
  %.t317 =w loadsw %.t315
  %.t318 =w copy 5
  %.t319 =w ceqw %.t317, %.t318
  %.t320 =l cnew %.t319, 0
  jnz %.t320, @L310, @L313
@L313
  %.t319 =w copy 0
  jmp @L311
@L310
  %.t319 =w copy 1
@L311
  %.t321 =l cnew %.t319, 0
  jnz %.t321, @L308, @L314
@L314
  %.t322 =l copy %sym
  %.t323 =l copy 24
  %.t322 =l add %.t322, %.t323
  %.t324 =w loadsw %.t322
  %.t325 =w copy 4
  %.t326 =w ceqw %.t324, %.t325
  %.t327 =l cnew %.t326, 0
  jnz %.t327, @L308, @L315
@L315
  %.t326 =w copy 0
  jmp @L309
@L308
  %.t326 =w copy 1
@L309
  %.t328 =w copy 1
  %.t329 =w cnew %.t326, %.t328
  jnz %.t329, @L306, @L316
@L316
  %.t331 =w copy 36
  %.t330 =w copy %.t331
  jmp @L307
@L306
  %.t332 =w copy 37
  %.t330 =w copy %.t332
@L307
  storew %.t330, %qbeprefix
  %.t333 =w copy %op
  %.t334 =w copy 39
  %.t335 =w ceqw %.t333, %.t334
  %.t336 =l cnew %.t335, 0
  jnz %.t336, @L318, @L320
@L320
  %.t337 =w copy %op
  %.t338 =w copy 40
  %.t339 =w ceqw %.t337, %.t338
  %.t340 =l cnew %.t339, 0
  jnz %.t340, @L318, @L321
@L321
  %.t339 =w copy 0
  jmp @L319
@L318
  %.t339 =w copy 1
@L319
  %.t341 =l cnew %.t339, 0
  jnz %.t341, @L322, @L317
@L322
  %.t342 =w copy 1
  %.t343 =w cnew %.t341, %.t342
  jnz %.t343, @L317, @L323
@L323
  %.t344 =l copy %sym
  %.t345 =l copy 36
  %.t344 =l add %.t344, %.t345
  %.t346 =w loadsw %.t344
  %.t347 =l cnew %.t346, 0
  jnz %.t347, @L326, @L328
@L328
  %.t348 =w loadub %qbeprefix
  %.t349 =w copy 36
  %.t350 =w ceqw %.t348, %.t349
  %.t351 =l cnew %.t350, 0
  jnz %.t351, @L326, @L329
@L329
  %.t350 =w copy 0
  jmp @L327
@L326
  %.t350 =w copy 1
@L327
  %.t352 =l cnew %.t350, 0
  jnz %.t352, @L330, @L324
@L330
  %.t353 =w copy 1
  %.t354 =w cnew %.t352, %.t353
  jnz %.t354, @L324, @L331
@L331
  %.t355 =w call $cgalloctemp()
  %posttemp =w copy %.t355
  %.t356 =l copy %sym
  %.t357 =l copy 28
  %.t356 =l add %.t356, %.t357
  %.t358 =w loadsw %.t356
@L333
  %.t359 =w copy 1
  %.t360 =w cnew %.t358, %.t359
  jnz %.t360, @L334, @L337
@L337
  jmp @L336
@L336
  %.t361 =l copy %sym
  %.t362 =l copy 0
  %.t361 =l add %.t361, %.t362
  %.t363 =l loadl %.t361
  %.t364 =w loadub %qbeprefix
  %.t365 =w copy %posttemp
  %.t366 =l copy $L271
  %.t367 =l loadl $Outfile
  %.t368 =w call $fprintf(l %.t367, l %.t366, w %.t365, w %.t364, l %.t363, )
  %.t369 =w copy %offset
  %.t370 =w copy %posttemp
  %.t371 =w copy %posttemp
  %.t372 =l copy $L272
  %.t373 =l loadl $Outfile
  %.t374 =w call $fprintf(l %.t373, l %.t372, w %.t371, w %.t370, w %.t369, )
  %.t375 =l copy %sym
  %.t376 =l copy 0
  %.t375 =l add %.t375, %.t376
  %.t377 =l loadl %.t375
  %.t378 =w loadub %qbeprefix
  %.t379 =w copy %posttemp
  %.t380 =l copy $L273
  %.t381 =l loadl $Outfile
  %.t382 =w call $fprintf(l %.t381, l %.t380, w %.t379, w %.t378, l %.t377, )
  jmp @L332
@L334
  %.t383 =w copy 4
  %.t384 =w cnew %.t358, %.t383
  jnz %.t384, @L335, @L339
@L339
  jmp @L338
@L338
  %.t385 =l copy %sym
  %.t386 =l copy 0
  %.t385 =l add %.t385, %.t386
  %.t387 =l loadl %.t385
  %.t388 =w loadub %qbeprefix
  %.t389 =w copy %posttemp
  %.t390 =l copy $L274
  %.t391 =l loadl $Outfile
  %.t392 =w call $fprintf(l %.t391, l %.t390, w %.t389, w %.t388, l %.t387, )
  %.t393 =w copy %offset
  %.t394 =w copy %posttemp
  %.t395 =w copy %posttemp
  %.t396 =l copy $L275
  %.t397 =l loadl $Outfile
  %.t398 =w call $fprintf(l %.t397, l %.t396, w %.t395, w %.t394, w %.t393, )
  %.t399 =l copy %sym
  %.t400 =l copy 0
  %.t399 =l add %.t399, %.t400
  %.t401 =l loadl %.t399
  %.t402 =w loadub %qbeprefix
  %.t403 =w copy %posttemp
  %.t404 =l copy $L276
  %.t405 =l loadl $Outfile
  %.t406 =w call $fprintf(l %.t405, l %.t404, w %.t403, w %.t402, l %.t401, )
  jmp @L332
@L335
  %.t407 =w copy 8
  %.t408 =w cnew %.t358, %.t407
  jnz %.t408, @L332, @L341
@L341
  jmp @L340
@L340
  %.t409 =l copy %sym
  %.t410 =l copy 0
  %.t409 =l add %.t409, %.t410
  %.t411 =l loadl %.t409
  %.t412 =w loadub %qbeprefix
  %.t413 =w copy %posttemp
  %.t414 =l copy $L277
  %.t415 =l loadl $Outfile
  %.t416 =w call $fprintf(l %.t415, l %.t414, w %.t413, w %.t412, l %.t411, )
  %.t417 =w copy %offset
  %.t418 =w copy %posttemp
  %.t419 =w copy %posttemp
  %.t420 =l copy $L278
  %.t421 =l loadl $Outfile
  %.t422 =w call $fprintf(l %.t421, l %.t420, w %.t419, w %.t418, w %.t417, )
  %.t423 =l copy %sym
  %.t424 =l copy 0
  %.t423 =l add %.t423, %.t424
  %.t425 =l loadl %.t423
  %.t426 =w loadub %qbeprefix
  %.t427 =w copy %posttemp
  %.t428 =l copy $L279
  %.t429 =l loadl $Outfile
  %.t430 =w call $fprintf(l %.t429, l %.t428, w %.t427, w %.t426, l %.t425, )
@L332
@L342
  jmp @L325
@L324
  %.t431 =w copy %offset
  %.t432 =l copy %sym
  %.t433 =l copy 0
  %.t432 =l add %.t432, %.t433
  %.t434 =l loadl %.t432
  %.t435 =w loadub %qbeprefix
  %.t436 =l copy %sym
  %.t437 =l copy 8
  %.t436 =l add %.t436, %.t437
  %.t438 =w loadsw %.t436
  %.t439 =w call $cgqbetype(w %.t438, )
  %.t440 =l copy %sym
  %.t441 =l copy 0
  %.t440 =l add %.t440, %.t441
  %.t442 =l loadl %.t440
  %.t443 =w loadub %qbeprefix
  %.t444 =l copy $L280
  %.t445 =l loadl $Outfile
  %.t446 =w call $fprintf(l %.t445, l %.t444, w %.t443, l %.t442, w %.t439, w %.t435, l %.t434, w %.t431, )
@L325
@L317
  %.t447 =l copy %sym
  %.t448 =l copy 36
  %.t447 =l add %.t447, %.t448
  %.t449 =w loadsw %.t447
  %.t450 =l cnew %.t449, 0
  jnz %.t450, @L345, @L347
@L347
  %.t451 =w loadub %qbeprefix
  %.t452 =w copy 36
  %.t453 =w ceqw %.t451, %.t452
  %.t454 =l cnew %.t453, 0
  jnz %.t454, @L345, @L348
@L348
  %.t453 =w copy 0
  jmp @L346
@L345
  %.t453 =w copy 1
@L346
  %.t455 =l cnew %.t453, 0
  jnz %.t455, @L349, @L343
@L349
  %.t456 =w copy 1
  %.t457 =w cnew %.t455, %.t456
  jnz %.t457, @L343, @L350
@L350
  %.t458 =l copy %sym
  %.t459 =l copy 28
  %.t458 =l add %.t458, %.t459
  %.t460 =w loadsw %.t458
@L352
  %.t461 =w copy 1
  %.t462 =w cnew %.t460, %.t461
  jnz %.t462, @L353, @L356
@L356
  jmp @L355
@L355
  %.t463 =l copy %sym
  %.t464 =l copy 0
  %.t463 =l add %.t463, %.t464
  %.t465 =l loadl %.t463
  %.t466 =w loadub %qbeprefix
  %.t467 =w copy %r
  %.t468 =l copy $L281
  %.t469 =l loadl $Outfile
  %.t470 =w call $fprintf(l %.t469, l %.t468, w %.t467, w %.t466, l %.t465, )
  jmp @L351
@L353
  %.t471 =w copy 4
  %.t472 =w cnew %.t460, %.t471
  jnz %.t472, @L354, @L358
@L358
  jmp @L357
@L357
  %.t473 =l copy %sym
  %.t474 =l copy 0
  %.t473 =l add %.t473, %.t474
  %.t475 =l loadl %.t473
  %.t476 =w loadub %qbeprefix
  %.t477 =w copy %r
  %.t478 =l copy $L282
  %.t479 =l loadl $Outfile
  %.t480 =w call $fprintf(l %.t479, l %.t478, w %.t477, w %.t476, l %.t475, )
  jmp @L351
@L354
  %.t481 =w copy 8
  %.t482 =w cnew %.t460, %.t481
  jnz %.t482, @L351, @L360
@L360
  jmp @L359
@L359
  %.t483 =l copy %sym
  %.t484 =l copy 0
  %.t483 =l add %.t483, %.t484
  %.t485 =l loadl %.t483
  %.t486 =w loadub %qbeprefix
  %.t487 =w copy %r
  %.t488 =l copy $L283
  %.t489 =l loadl $Outfile
  %.t490 =w call $fprintf(l %.t489, l %.t488, w %.t487, w %.t486, l %.t485, )
@L351
@L361
  jmp @L344
@L343
  %.t491 =l copy %sym
  %.t492 =l copy 0
  %.t491 =l add %.t491, %.t492
  %.t493 =l loadl %.t491
  %.t494 =w loadub %qbeprefix
  %.t495 =l copy %sym
  %.t496 =l copy 8
  %.t495 =l add %.t495, %.t496
  %.t497 =w loadsw %.t495
  %.t498 =w call $cgqbetype(w %.t497, )
  %.t499 =w copy %r
  %.t500 =l copy $L284
  %.t501 =l loadl $Outfile
  %.t502 =w call $fprintf(l %.t501, l %.t500, w %.t499, w %.t498, w %.t494, l %.t493, )
@L344
  %.t503 =w copy %op
  %.t504 =w copy 41
  %.t505 =w ceqw %.t503, %.t504
  %.t506 =l cnew %.t505, 0
  jnz %.t506, @L363, @L365
@L365
  %.t507 =w copy %op
  %.t508 =w copy 42
  %.t509 =w ceqw %.t507, %.t508
  %.t510 =l cnew %.t509, 0
  jnz %.t510, @L363, @L366
@L366
  %.t509 =w copy 0
  jmp @L364
@L363
  %.t509 =w copy 1
@L364
  %.t511 =l cnew %.t509, 0
  jnz %.t511, @L367, @L362
@L367
  %.t512 =w copy 1
  %.t513 =w cnew %.t511, %.t512
  jnz %.t513, @L362, @L368
@L368
  %.t514 =l copy %sym
  %.t515 =l copy 36
  %.t514 =l add %.t514, %.t515
  %.t516 =w loadsw %.t514
  %.t517 =l cnew %.t516, 0
  jnz %.t517, @L371, @L373
@L373
  %.t518 =w loadub %qbeprefix
  %.t519 =w copy 36
  %.t520 =w ceqw %.t518, %.t519
  %.t521 =l cnew %.t520, 0
  jnz %.t521, @L371, @L374
@L374
  %.t520 =w copy 0
  jmp @L372
@L371
  %.t520 =w copy 1
@L372
  %.t522 =l cnew %.t520, 0
  jnz %.t522, @L375, @L369
@L375
  %.t523 =w copy 1
  %.t524 =w cnew %.t522, %.t523
  jnz %.t524, @L369, @L376
@L376
  %.t525 =w call $cgalloctemp()
  %posttemp =w copy %.t525
  %.t526 =l copy %sym
  %.t527 =l copy 28
  %.t526 =l add %.t526, %.t527
  %.t528 =w loadsw %.t526
@L378
  %.t529 =w copy 1
  %.t530 =w cnew %.t528, %.t529
  jnz %.t530, @L379, @L382
@L382
  jmp @L381
@L381
  %.t531 =l copy %sym
  %.t532 =l copy 0
  %.t531 =l add %.t531, %.t532
  %.t533 =l loadl %.t531
  %.t534 =w loadub %qbeprefix
  %.t535 =w copy %posttemp
  %.t536 =l copy $L285
  %.t537 =l loadl $Outfile
  %.t538 =w call $fprintf(l %.t537, l %.t536, w %.t535, w %.t534, l %.t533, )
  %.t539 =w copy %offset
  %.t540 =w copy %posttemp
  %.t541 =w copy %posttemp
  %.t542 =l copy $L286
  %.t543 =l loadl $Outfile
  %.t544 =w call $fprintf(l %.t543, l %.t542, w %.t541, w %.t540, w %.t539, )
  %.t545 =l copy %sym
  %.t546 =l copy 0
  %.t545 =l add %.t545, %.t546
  %.t547 =l loadl %.t545
  %.t548 =w loadub %qbeprefix
  %.t549 =w copy %posttemp
  %.t550 =l copy $L287
  %.t551 =l loadl $Outfile
  %.t552 =w call $fprintf(l %.t551, l %.t550, w %.t549, w %.t548, l %.t547, )
  jmp @L377
@L379
  %.t553 =w copy 4
  %.t554 =w cnew %.t528, %.t553
  jnz %.t554, @L380, @L384
@L384
  jmp @L383
@L383
  %.t555 =l copy %sym
  %.t556 =l copy 0
  %.t555 =l add %.t555, %.t556
  %.t557 =l loadl %.t555
  %.t558 =w loadub %qbeprefix
  %.t559 =w copy %posttemp
  %.t560 =l copy $L288
  %.t561 =l loadl $Outfile
  %.t562 =w call $fprintf(l %.t561, l %.t560, w %.t559, w %.t558, l %.t557, )
  %.t563 =w copy %offset
  %.t564 =w copy %posttemp
  %.t565 =w copy %posttemp
  %.t566 =l copy $L289
  %.t567 =l loadl $Outfile
  %.t568 =w call $fprintf(l %.t567, l %.t566, w %.t565, w %.t564, w %.t563, )
  %.t569 =l copy %sym
  %.t570 =l copy 0
  %.t569 =l add %.t569, %.t570
  %.t571 =l loadl %.t569
  %.t572 =w loadub %qbeprefix
  %.t573 =w copy %posttemp
  %.t574 =l copy $L290
  %.t575 =l loadl $Outfile
  %.t576 =w call $fprintf(l %.t575, l %.t574, w %.t573, w %.t572, l %.t571, )
  jmp @L377
@L380
  %.t577 =w copy 8
  %.t578 =w cnew %.t528, %.t577
  jnz %.t578, @L377, @L386
@L386
  jmp @L385
@L385
  %.t579 =l copy %sym
  %.t580 =l copy 0
  %.t579 =l add %.t579, %.t580
  %.t581 =l loadl %.t579
  %.t582 =w loadub %qbeprefix
  %.t583 =w copy %posttemp
  %.t584 =l copy $L291
  %.t585 =l loadl $Outfile
  %.t586 =w call $fprintf(l %.t585, l %.t584, w %.t583, w %.t582, l %.t581, )
  %.t587 =w copy %offset
  %.t588 =w copy %posttemp
  %.t589 =w copy %posttemp
  %.t590 =l copy $L292
  %.t591 =l loadl $Outfile
  %.t592 =w call $fprintf(l %.t591, l %.t590, w %.t589, w %.t588, w %.t587, )
  %.t593 =l copy %sym
  %.t594 =l copy 0
  %.t593 =l add %.t593, %.t594
  %.t595 =l loadl %.t593
  %.t596 =w loadub %qbeprefix
  %.t597 =w copy %posttemp
  %.t598 =l copy $L293
  %.t599 =l loadl $Outfile
  %.t600 =w call $fprintf(l %.t599, l %.t598, w %.t597, w %.t596, l %.t595, )
@L377
@L387
  jmp @L370
@L369
  %.t601 =w copy %offset
  %.t602 =l copy %sym
  %.t603 =l copy 0
  %.t602 =l add %.t602, %.t603
  %.t604 =l loadl %.t602
  %.t605 =w loadub %qbeprefix
  %.t606 =l copy %sym
  %.t607 =l copy 8
  %.t606 =l add %.t606, %.t607
  %.t608 =w loadsw %.t606
  %.t609 =w call $cgqbetype(w %.t608, )
  %.t610 =l copy %sym
  %.t611 =l copy 0
  %.t610 =l add %.t610, %.t611
  %.t612 =l loadl %.t610
  %.t613 =w loadub %qbeprefix
  %.t614 =l copy $L294
  %.t615 =l loadl $Outfile
  %.t616 =w call $fprintf(l %.t615, l %.t614, w %.t613, l %.t612, w %.t609, w %.t605, l %.t604, w %.t601, )
@L370
@L362
  %.t617 =w copy %r
  %.ret =w copy %.t617
  jmp @L76
@L76
  ret %.ret
}
data $L388 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 99, b 111, b 112, b 121, b 32, b 36, b 76, b 37, b 100, b 10,  b 0 }
export function w $cgloadglobstr(w %label, ) {
@L389
  %.t618 =w call $cgalloctemp()
  %r =w copy %.t618
  %.t619 =w copy %label
  %.t620 =w copy %r
  %.t621 =l copy $L388
  %.t622 =l loadl $Outfile
  %.t623 =w call $fprintf(l %.t622, l %.t621, w %.t620, w %.t619, )
  %.t624 =w copy %r
  %.ret =w copy %.t624
  jmp @L77
@L77
  ret %.ret
}
data $L390 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 97, b 100, b 100, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgadd(w %r1, w %r2, w %type, ) {
@L391
  %.t625 =w copy %r2
  %.t626 =w copy %r1
  %.t627 =w copy %type
  %.t628 =w call $cgqbetype(w %.t627, )
  %.t629 =w copy %r1
  %.t630 =l copy $L390
  %.t631 =l loadl $Outfile
  %.t632 =w call $fprintf(l %.t631, l %.t630, w %.t629, w %.t628, w %.t626, w %.t625, )
  %.t633 =w copy %r1
  %.ret =w copy %.t633
  jmp @L78
@L78
  ret %.ret
}
data $L392 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 115, b 117, b 98, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgsub(w %r1, w %r2, w %type, ) {
@L393
  %.t634 =w copy %r2
  %.t635 =w copy %r1
  %.t636 =w copy %type
  %.t637 =w call $cgqbetype(w %.t636, )
  %.t638 =w copy %r1
  %.t639 =l copy $L392
  %.t640 =l loadl $Outfile
  %.t641 =w call $fprintf(l %.t640, l %.t639, w %.t638, w %.t637, w %.t635, w %.t634, )
  %.t642 =w copy %r1
  %.ret =w copy %.t642
  jmp @L79
@L79
  ret %.ret
}
data $L394 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 109, b 117, b 108, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgmul(w %r1, w %r2, w %type, ) {
@L395
  %.t643 =w copy %r2
  %.t644 =w copy %r1
  %.t645 =w copy %type
  %.t646 =w call $cgqbetype(w %.t645, )
  %.t647 =w copy %r1
  %.t648 =l copy $L394
  %.t649 =l loadl $Outfile
  %.t650 =w call $fprintf(l %.t649, l %.t648, w %.t647, w %.t646, w %.t644, w %.t643, )
  %.t651 =w copy %r1
  %.ret =w copy %.t651
  jmp @L80
@L80
  ret %.ret
}
data $L396 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 100, b 105, b 118, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L397 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 114, b 101, b 109, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgdivmod(w %r1, w %r2, w %op, w %type, ) {
@L398
  %.t652 =w copy %op
  %.t653 =w copy 24
  %.t654 =w ceqw %.t652, %.t653
  %.t655 =w copy 1
  %.t656 =w cnew %.t654, %.t655
  jnz %.t656, @L399, @L401
@L401
  %.t657 =w copy %r2
  %.t658 =w copy %r1
  %.t659 =w copy %type
  %.t660 =w call $cgqbetype(w %.t659, )
  %.t661 =w copy %r1
  %.t662 =l copy $L396
  %.t663 =l loadl $Outfile
  %.t664 =w call $fprintf(l %.t663, l %.t662, w %.t661, w %.t660, w %.t658, w %.t657, )
@L402
  jmp @L400
@L399
  %.t665 =w copy %r2
  %.t666 =w copy %r1
  %.t667 =w copy %type
  %.t668 =w call $cgqbetype(w %.t667, )
  %.t669 =w copy %r1
  %.t670 =l copy $L397
  %.t671 =l loadl $Outfile
  %.t672 =w call $fprintf(l %.t671, l %.t670, w %.t669, w %.t668, w %.t666, w %.t665, )
@L400
  %.t673 =w copy %r1
  %.ret =w copy %.t673
  jmp @L81
@L81
  ret %.ret
}
data $L403 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 97, b 110, b 100, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgand(w %r1, w %r2, w %type, ) {
@L404
  %.t674 =w copy %r2
  %.t675 =w copy %r1
  %.t676 =w copy %type
  %.t677 =w call $cgqbetype(w %.t676, )
  %.t678 =w copy %r1
  %.t679 =l copy $L403
  %.t680 =l loadl $Outfile
  %.t681 =w call $fprintf(l %.t680, l %.t679, w %.t678, w %.t677, w %.t675, w %.t674, )
  %.t682 =w copy %r1
  %.ret =w copy %.t682
  jmp @L104
@L104
  ret %.ret
}
data $L405 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 111, b 114, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgor(w %r1, w %r2, w %type, ) {
@L406
  %.t683 =w copy %r2
  %.t684 =w copy %r1
  %.t685 =w copy %type
  %.t686 =w call $cgqbetype(w %.t685, )
  %.t687 =w copy %r1
  %.t688 =l copy $L405
  %.t689 =l loadl $Outfile
  %.t690 =w call $fprintf(l %.t689, l %.t688, w %.t687, w %.t686, w %.t684, w %.t683, )
  %.t691 =w copy %r1
  %.ret =w copy %.t691
  jmp @L105
@L105
  ret %.ret
}
data $L407 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 120, b 111, b 114, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgxor(w %r1, w %r2, w %type, ) {
@L408
  %.t692 =w copy %r2
  %.t693 =w copy %r1
  %.t694 =w copy %type
  %.t695 =w call $cgqbetype(w %.t694, )
  %.t696 =w copy %r1
  %.t697 =l copy $L407
  %.t698 =l loadl $Outfile
  %.t699 =w call $fprintf(l %.t698, l %.t697, w %.t696, w %.t695, w %.t693, w %.t692, )
  %.t700 =w copy %r1
  %.ret =w copy %.t700
  jmp @L106
@L106
  ret %.ret
}
data $L409 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 115, b 104, b 108, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgshl(w %r1, w %r2, w %type, ) {
@L410
  %.t701 =w copy %r2
  %.t702 =w copy %r1
  %.t703 =w copy %type
  %.t704 =w call $cgqbetype(w %.t703, )
  %.t705 =w copy %r1
  %.t706 =l copy $L409
  %.t707 =l loadl $Outfile
  %.t708 =w call $fprintf(l %.t707, l %.t706, w %.t705, w %.t704, w %.t702, w %.t701, )
  %.t709 =w copy %r1
  %.ret =w copy %.t709
  jmp @L107
@L107
  ret %.ret
}
data $L411 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 115, b 104, b 114, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgshr(w %r1, w %r2, w %type, ) {
@L412
  %.t710 =w copy %r2
  %.t711 =w copy %r1
  %.t712 =w copy %type
  %.t713 =w call $cgqbetype(w %.t712, )
  %.t714 =w copy %r1
  %.t715 =l copy $L411
  %.t716 =l loadl $Outfile
  %.t717 =w call $fprintf(l %.t716, l %.t715, w %.t714, w %.t713, w %.t711, w %.t710, )
  %.t718 =w copy %r1
  %.ret =w copy %.t718
  jmp @L108
@L108
  ret %.ret
}
data $L413 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 115, b 117, b 98, b 32, b 48, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgnegate(w %r, w %type, ) {
@L414
  %.t719 =w copy %r
  %.t720 =w copy %type
  %.t721 =w call $cgqbetype(w %.t720, )
  %.t722 =w copy %r
  %.t723 =l copy $L413
  %.t724 =l loadl $Outfile
  %.t725 =w call $fprintf(l %.t724, l %.t723, w %.t722, w %.t721, w %.t719, )
  %.t726 =w copy %r
  %.ret =w copy %.t726
  jmp @L99
@L99
  ret %.ret
}
data $L415 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 120, b 111, b 114, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 45, b 49, b 10,  b 0 }
export function w $cginvert(w %r, w %type, ) {
@L416
  %.t727 =w copy %r
  %.t728 =w copy %type
  %.t729 =w call $cgqbetype(w %.t728, )
  %.t730 =w copy %r
  %.t731 =l copy $L415
  %.t732 =l loadl $Outfile
  %.t733 =w call $fprintf(l %.t732, l %.t731, w %.t730, w %.t729, w %.t727, )
  %.t734 =w copy %r
  %.ret =w copy %.t734
  jmp @L100
@L100
  ret %.ret
}
data $L417 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 99, b 101, b 113, b 37, b 99, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 48, b 10,  b 0 }
export function w $cglognot(w %r, w %type, ) {
@L418
  %q =l alloc4 1
  %.t735 =w copy %type
  %.t736 =w call $cgqbetype(w %.t735, )
  storew %.t736, %q
  %.t737 =w copy %r
  %.t738 =w loadub %q
  %.t739 =w loadub %q
  %.t740 =w copy %r
  %.t741 =l copy $L417
  %.t742 =l loadl $Outfile
  %.t743 =w call $fprintf(l %.t742, l %.t741, w %.t740, w %.t739, w %.t738, w %.t737, )
  %.t744 =w copy %r
  %.ret =w copy %.t744
  jmp @L101
@L101
  ret %.ret
}
data $L419 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 99, b 111, b 112, b 121, b 32, b 37, b 100, b 10,  b 0 }
export function   $cgloadboolean(w %r, w %val, w %type, ) {
@L420
  %.t745 =w copy %val
  %.t746 =w copy %type
  %.t747 =w call $cgqbetype(w %.t746, )
  %.t748 =w copy %r
  %.t749 =l copy $L419
  %.t750 =l loadl $Outfile
  %.t751 =w call $fprintf(l %.t750, l %.t749, w %.t748, w %.t747, w %.t745, )
@L102
  ret
}
data $L421 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 99, b 110, b 101, b 37, b 99, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 48, b 10,  b 0 }
data $L422 = { b 32, b 32, b 106, b 110, b 122, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 64, b 76, b 37, b 100, b 44, b 32, b 64, b 76, b 37, b 100, b 10,  b 0 }
data $L423 = { b 32, b 32, b 106, b 110, b 122, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 64, b 76, b 37, b 100, b 44, b 32, b 64, b 76, b 37, b 100, b 10,  b 0 }
export function w $cgboolean(w %r, w %op, w %label, w %type, ) {
@L424
  %.t752 =w call $genlabel()
  %label2 =w copy %.t752
  %.t753 =w call $cgalloctemp()
  %r2 =w copy %.t753
  %.t754 =w copy %r
  %.t755 =w copy %type
  %.t756 =w call $cgqbetype(w %.t755, )
  %.t757 =w copy %r2
  %.t758 =l copy $L421
  %.t759 =l loadl $Outfile
  %.t760 =w call $fprintf(l %.t759, l %.t758, w %.t757, w %.t756, w %.t754, )
  %.t761 =w copy %op
@L426
  %.t762 =w copy 30
  %.t763 =w cnew %.t761, %.t762
  jnz %.t763, @L427, @L431
@L431
  jmp @L430
@L427
  %.t764 =w copy 31
  %.t765 =w cnew %.t761, %.t764
  jnz %.t765, @L428, @L432
@L432
  jmp @L430
@L428
  %.t766 =w copy 9
  %.t767 =w cnew %.t761, %.t766
  jnz %.t767, @L429, @L433
@L433
  jmp @L430
@L430
  %.t768 =w copy %label
  %.t769 =w copy %label2
  %.t770 =w copy %r2
  %.t771 =l copy $L422
  %.t772 =l loadl $Outfile
  %.t773 =w call $fprintf(l %.t772, l %.t771, w %.t770, w %.t769, w %.t768, )
  jmp @L425
@L429
  %.t774 =w copy 8
  %.t775 =w cnew %.t761, %.t774
  jnz %.t775, @L425, @L435
@L435
  jmp @L434
@L434
  %.t776 =w copy %label2
  %.t777 =w copy %label
  %.t778 =w copy %r2
  %.t779 =l copy $L423
  %.t780 =l loadl $Outfile
  %.t781 =w call $fprintf(l %.t780, l %.t779, w %.t778, w %.t777, w %.t776, )
  jmp @L425
@L425
  %.t782 =w copy %label2
  call $cglabel(w %.t782, )
  %.t784 =w copy %r2
  %.ret =w copy %.t784
  jmp @L103
@L103
  ret %.ret
}
data $L436 = { b 32, b 32, b 99, b 97, b 108, b 108, b 32, b 36, b 37, b 115, b 40,  b 0 }
data $L437 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 99, b 97, b 108, b 108, b 32, b 36, b 37, b 115, b 40,  b 0 }
data $L438 = { b 37, b 99, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32,  b 0 }
data $L439 = { b 41, b 10,  b 0 }
export function w $cgcall(l %sym, w %numargs, l %arglist, l %typelist, ) {
@L440
  %.t785 =w call $cgalloctemp()
  %outr =w copy %.t785
  %.t786 =l copy %sym
  %.t787 =l copy 8
  %.t786 =l add %.t786, %.t787
  %.t788 =w loadsw %.t786
  %.t789 =w copy 16
  %.t790 =w ceqw %.t788, %.t789
  %.t791 =w copy 1
  %.t792 =w cnew %.t790, %.t791
  jnz %.t792, @L441, @L443
@L443
  %.t793 =l copy %sym
  %.t794 =l copy 0
  %.t793 =l add %.t793, %.t794
  %.t795 =l loadl %.t793
  %.t796 =l copy $L436
  %.t797 =l loadl $Outfile
  %.t798 =w call $fprintf(l %.t797, l %.t796, l %.t795, )
@L444
  jmp @L442
@L441
  %.t799 =l copy %sym
  %.t800 =l copy 0
  %.t799 =l add %.t799, %.t800
  %.t801 =l loadl %.t799
  %.t802 =l copy %sym
  %.t803 =l copy 8
  %.t802 =l add %.t802, %.t803
  %.t804 =w loadsw %.t802
  %.t805 =w call $cgqbetype(w %.t804, )
  %.t806 =w copy %outr
  %.t807 =l copy $L437
  %.t808 =l loadl $Outfile
  %.t809 =w call $fprintf(l %.t808, l %.t807, w %.t806, w %.t805, l %.t801, )
@L442
  %.t810 =w copy %numargs
  %.t811 =w copy 1
  %.t810 =w sub %.t810, %.t811
  %i =w copy %.t810
@L445
  %.t812 =w copy %i
  %.t813 =w copy 0
  %.t814 =w csgew %.t812, %.t813
  %.t815 =w copy 1
  %.t816 =w cnew %.t814, %.t815
  jnz %.t816, @L446, @L447
@L447
  %.t817 =l copy %arglist
  %.t818 =w copy %i
  %.t819 =l extsw %.t818
  %.t820 =l shl %.t819, 2
  %.t817 =l add %.t817, %.t820
  %.t821 =w loadsw %.t817
  %.t822 =l copy %typelist
  %.t823 =w copy %i
  %.t824 =l extsw %.t823
  %.t825 =l shl %.t824, 2
  %.t822 =l add %.t822, %.t825
  %.t826 =w loadsw %.t822
  %.t827 =w call $cgqbetype(w %.t826, )
  %.t828 =l copy $L438
  %.t829 =l loadl $Outfile
  %.t830 =w call $fprintf(l %.t829, l %.t828, w %.t827, w %.t821, )
  %.t831 =w copy %i
  %i =w add %i, -1
  jmp @L445
@L446
  %.t832 =l copy $L439
  %.t833 =l loadl $Outfile
  %.t834 =w call $fprintf(l %.t833, l %.t832, )
  %.t835 =w copy %outr
  %.ret =w copy %.t835
  jmp @L83
@L83
  ret %.ret
}
data $L448 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 101, b 120, b 116, b 115, b 119, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L449 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 115, b 104, b 108, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
data $L450 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 115, b 104, b 108, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
export function w $cgshlconst(w %r, w %val, w %type, ) {
@L451
  %.t836 =w call $cgalloctemp()
  %r2 =w copy %.t836
  %.t837 =w call $cgalloctemp()
  %r3 =w copy %.t837
  %.t838 =w copy %type
  %.t839 =w call $cgprimsize(w %.t838, )
  %.t840 =w copy 8
  %.t841 =w csltw %.t839, %.t840
  %.t842 =w copy 1
  %.t843 =w cnew %.t841, %.t842
  jnz %.t843, @L452, @L454
@L454
  %.t844 =w copy %r
  %.t845 =w copy %r2
  %.t846 =l copy $L448
  %.t847 =l loadl $Outfile
  %.t848 =w call $fprintf(l %.t847, l %.t846, w %.t845, w %.t844, )
  %.t849 =w copy %val
  %.t850 =w copy %r2
  %.t851 =w copy %r3
  %.t852 =l copy $L449
  %.t853 =l loadl $Outfile
  %.t854 =w call $fprintf(l %.t853, l %.t852, w %.t851, w %.t850, w %.t849, )
@L455
  jmp @L453
@L452
  %.t855 =w copy %val
  %.t856 =w copy %r
  %.t857 =w copy %r3
  %.t858 =l copy $L450
  %.t859 =l loadl $Outfile
  %.t860 =w call $fprintf(l %.t859, l %.t858, w %.t857, w %.t856, w %.t855, )
@L453
  %.t861 =w copy %r3
  %.ret =w copy %.t861
  jmp @L82
@L82
  ret %.ret
}
data $L456 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 37, b 99, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 36, b 37, b 115, b 10,  b 0 }
export function w $cgstorglob(w %r, l %sym, ) {
@L457
  %q =l alloc4 1
  %.t862 =l copy %sym
  %.t863 =l copy 8
  %.t862 =l add %.t862, %.t863
  %.t864 =w loadsw %.t862
  %.t865 =w call $cgqbetype(w %.t864, )
  storew %.t865, %q
  %.t866 =l copy %sym
  %.t867 =l copy 8
  %.t866 =l add %.t866, %.t867
  %.t868 =w loadsw %.t866
  %.t869 =w copy 32
  %.t870 =w ceqw %.t868, %.t869
  %.t871 =w copy 1
  %.t872 =w cnew %.t870, %.t871
  jnz %.t872, @L458, @L459
@L459
  %.t873 =w copy 98
  storew %.t873, %q
@L458
  %.t874 =l copy %sym
  %.t875 =l copy 0
  %.t874 =l add %.t874, %.t875
  %.t876 =l loadl %.t874
  %.t877 =w copy %r
  %.t878 =w loadub %q
  %.t879 =l copy $L456
  %.t880 =l loadl $Outfile
  %.t881 =w call $fprintf(l %.t880, l %.t879, w %.t878, w %.t877, l %.t876, )
  %.t882 =w copy %r
  %.ret =w copy %.t882
  jmp @L85
@L85
  ret %.ret
}
data $L460 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 37, b 99, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 37, b 115, b 10,  b 0 }
data $L461 = { b 32, b 32, b 37, b 37, b 37, b 115, b 32, b 61, b 37, b 99, b 32, b 99, b 111, b 112, b 121, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgstorlocal(w %r, l %sym, ) {
@L462
  %.t883 =l copy %sym
  %.t884 =l copy 36
  %.t883 =l add %.t883, %.t884
  %.t885 =w loadsw %.t883
  %.t886 =l cnew %.t885, 0
  jnz %.t886, @L465, @L463
@L465
  %.t887 =w copy 1
  %.t888 =w cnew %.t886, %.t887
  jnz %.t888, @L463, @L466
@L466
  %.t889 =l copy %sym
  %.t890 =l copy 0
  %.t889 =l add %.t889, %.t890
  %.t891 =l loadl %.t889
  %.t892 =w copy %r
  %.t893 =l copy %sym
  %.t894 =l copy 8
  %.t893 =l add %.t893, %.t894
  %.t895 =w loadsw %.t893
  %.t896 =w call $cgqbetype(w %.t895, )
  %.t897 =l copy $L460
  %.t898 =l loadl $Outfile
  %.t899 =w call $fprintf(l %.t898, l %.t897, w %.t896, w %.t892, l %.t891, )
@L467
  jmp @L464
@L463
  %.t900 =w copy %r
  %.t901 =l copy %sym
  %.t902 =l copy 8
  %.t901 =l add %.t901, %.t902
  %.t903 =w loadsw %.t901
  %.t904 =w call $cgqbetype(w %.t903, )
  %.t905 =l copy %sym
  %.t906 =l copy 0
  %.t905 =l add %.t905, %.t906
  %.t907 =l loadl %.t905
  %.t908 =l copy $L461
  %.t909 =l loadl $Outfile
  %.t910 =w call $fprintf(l %.t909, l %.t908, l %.t907, w %.t904, w %.t900, )
@L464
  %.t911 =w copy %r
  %.ret =w copy %.t911
  jmp @L86
@L86
  ret %.ret
}
data $L468 = { b 101, b 120, b 112, b 111, b 114, b 116, b 32,  b 0 }
data $L469 = { b 100, b 97, b 116, b 97, b 32, b 36, b 37, b 115, b 32, b 61, b 32, b 97, b 108, b 105, b 103, b 110, b 32, b 56, b 32, b 123, b 32,  b 0 }
data $L470 = { b 100, b 97, b 116, b 97, b 32, b 36, b 37, b 115, b 32, b 61, b 32, b 97, b 108, b 105, b 103, b 110, b 32, b 37, b 100, b 32, b 123, b 32,  b 0 }
data $L471 = { b 98, b 32, b 37, b 100, b 44, b 32,  b 0 }
data $L472 = { b 119, b 32, b 37, b 100, b 44, b 32,  b 0 }
data $L473 = { b 108, b 32, b 36, b 76, b 37, b 100, b 44, b 32,  b 0 }
data $L474 = { b 108, b 32, b 37, b 100, b 44, b 32,  b 0 }
data $L475 = { b 122, b 32, b 37, b 100, b 44, b 32,  b 0 }
data $L476 = { b 125, b 10,  b 0 }
export function   $cgglobsym(l %node, ) {
@L477
  %.t912 =l copy %node
  %.t913 =w copy 0
  %.t915 =l extub %.t913
  %.t916 =l ceql %.t912, %.t915
  %.t917 =w copy 1
  %.t918 =w cnew %.t916, %.t917
  jnz %.t918, @L478, @L479
@L479
  jmp @L87
@L478
  %.t919 =l copy %node
  %.t920 =l copy 20
  %.t919 =l add %.t919, %.t920
  %.t921 =w loadsw %.t919
  %.t922 =w copy 1
  %.t923 =w ceqw %.t921, %.t922
  %.t924 =w copy 1
  %.t925 =w cnew %.t923, %.t924
  jnz %.t925, @L480, @L481
@L481
  jmp @L87
@L480
  %.t926 =l copy %node
  %.t927 =l copy 20
  %.t926 =l add %.t926, %.t927
  %.t928 =w loadsw %.t926
  %.t929 =w copy 2
  %.t930 =w ceqw %.t928, %.t929
  %.t931 =w copy 1
  %.t932 =w cnew %.t930, %.t931
  jnz %.t932, @L482, @L484
@L484
  %.t933 =l copy %node
  %.t934 =l copy 12
  %.t933 =l add %.t933, %.t934
  %.t935 =l loadl %.t933
  %.t936 =l copy %node
  %.t937 =l copy 8
  %.t936 =l add %.t936, %.t937
  %.t938 =w loadsw %.t936
  %.t939 =w call $value_at(w %.t938, )
  %.t940 =w call $typesize(w %.t939, l %.t935, )
  %size =w copy %.t940
  %.t941 =l copy %node
  %.t942 =l copy 8
  %.t941 =l add %.t941, %.t942
  %.t943 =w loadsw %.t941
  %.t944 =w call $value_at(w %.t943, )
  %type =w copy %.t944
@L485
  jmp @L483
@L482
  %.t945 =l copy %node
  %.t946 =l copy 28
  %.t945 =l add %.t945, %.t946
  %.t947 =w loadsw %.t945
  %size =w copy %.t947
  %.t948 =l copy %node
  %.t949 =l copy 8
  %.t948 =l add %.t948, %.t949
  %.t950 =w loadsw %.t948
  %type =w copy %.t950
@L483
  call $cgdataseg()
  %.t952 =l copy %node
  %.t953 =l copy 24
  %.t952 =l add %.t952, %.t953
  %.t954 =w loadsw %.t952
  %.t955 =w copy 1
  %.t956 =w ceqw %.t954, %.t955
  %.t957 =w copy 1
  %.t958 =w cnew %.t956, %.t957
  jnz %.t958, @L486, @L487
@L487
  %.t959 =l copy $L468
  %.t960 =l loadl $Outfile
  %.t961 =w call $fprintf(l %.t960, l %.t959, )
@L486
  %.t962 =l copy %node
  %.t963 =l copy 8
  %.t962 =l add %.t962, %.t963
  %.t964 =w loadsw %.t962
  %.t965 =w copy 80
  %.t966 =w ceqw %.t964, %.t965
  %.t967 =l cnew %.t966, 0
  jnz %.t967, @L490, @L492
@L492
  %.t968 =l copy %node
  %.t969 =l copy 8
  %.t968 =l add %.t968, %.t969
  %.t970 =w loadsw %.t968
  %.t971 =w copy 96
  %.t972 =w ceqw %.t970, %.t971
  %.t973 =l cnew %.t972, 0
  jnz %.t973, @L490, @L493
@L493
  %.t972 =w copy 0
  jmp @L491
@L490
  %.t972 =w copy 1
@L491
  %.t974 =l cnew %.t972, 0
  jnz %.t974, @L494, @L488
@L494
  %.t975 =w copy 1
  %.t976 =w cnew %.t974, %.t975
  jnz %.t976, @L488, @L495
@L495
  %.t977 =l copy %node
  %.t978 =l copy 0
  %.t977 =l add %.t977, %.t978
  %.t979 =l loadl %.t977
  %.t980 =l copy $L469
  %.t981 =l loadl $Outfile
  %.t982 =w call $fprintf(l %.t981, l %.t980, l %.t979, )
@L496
  jmp @L489
@L488
  %.t983 =w copy %type
  %.t984 =w call $cgprimsize(w %.t983, )
  %.t985 =l copy %node
  %.t986 =l copy 0
  %.t985 =l add %.t985, %.t986
  %.t987 =l loadl %.t985
  %.t988 =l copy $L470
  %.t989 =l loadl $Outfile
  %.t990 =w call $fprintf(l %.t989, l %.t988, l %.t987, w %.t984, )
@L489
  %.t991 =w copy 0
  %i =w copy %.t991
@L497
  %.t992 =w copy %i
  %.t993 =l copy %node
  %.t994 =l copy 32
  %.t993 =l add %.t993, %.t994
  %.t995 =w loadsw %.t993
  %.t996 =w csltw %.t992, %.t995
  %.t997 =w copy 1
  %.t998 =w cnew %.t996, %.t997
  jnz %.t998, @L498, @L499
@L499
  %.t999 =w copy 0
  %initvalue =w copy %.t999
  %.t1000 =l copy %node
  %.t1001 =l copy 40
  %.t1000 =l add %.t1000, %.t1001
  %.t1002 =l loadl %.t1000
  %.t1003 =w copy 0
  %.t1005 =l extub %.t1003
  %.t1006 =l cnel %.t1002, %.t1005
  %.t1007 =w copy 1
  %.t1008 =w cnew %.t1006, %.t1007
  jnz %.t1008, @L500, @L501
@L501
  %.t1009 =l copy %node
  %.t1010 =l copy 40
  %.t1009 =l add %.t1009, %.t1010
  %.t1011 =l loadl %.t1009
  %.t1012 =w copy %i
  %.t1013 =l extsw %.t1012
  %.t1014 =l shl %.t1013, 2
  %.t1011 =l add %.t1011, %.t1014
  %.t1015 =w loadsw %.t1011
  %initvalue =w copy %.t1015
@L500
  %.t1016 =w copy %size
@L503
  %.t1017 =w copy 1
  %.t1018 =w cnew %.t1016, %.t1017
  jnz %.t1018, @L504, @L508
@L508
  jmp @L507
@L507
  %.t1019 =w copy %initvalue
  %.t1020 =l copy $L471
  %.t1021 =l loadl $Outfile
  %.t1022 =w call $fprintf(l %.t1021, l %.t1020, w %.t1019, )
  jmp @L502
@L504
  %.t1023 =w copy 4
  %.t1024 =w cnew %.t1016, %.t1023
  jnz %.t1024, @L505, @L510
@L510
  jmp @L509
@L509
  %.t1025 =w copy %initvalue
  %.t1026 =l copy $L472
  %.t1027 =l loadl $Outfile
  %.t1028 =w call $fprintf(l %.t1027, l %.t1026, w %.t1025, )
  jmp @L502
@L505
  %.t1029 =w copy 8
  %.t1030 =w cnew %.t1016, %.t1029
  jnz %.t1030, @L506, @L512
@L512
  jmp @L511
@L511
  %.t1031 =l copy %node
  %.t1032 =l copy 40
  %.t1031 =l add %.t1031, %.t1032
  %.t1033 =l loadl %.t1031
  %.t1034 =w copy 0
  %.t1036 =l extub %.t1034
  %.t1037 =l cnel %.t1033, %.t1036
  %.t1038 =l cnew %.t1037, 0
  jnz %.t1038, @L519, @L517
@L519
  %.t1039 =w copy %type
  %.t1040 =w copy 32
  %.t1041 =w call $pointer_to(w %.t1040, )
  %.t1042 =w ceqw %.t1039, %.t1041
  %.t1043 =l cnew %.t1042, 0
  jnz %.t1043, @L520, @L517
@L520
  %.t1042 =w copy 1
  jmp @L518
@L517
  %.t1042 =w copy 0
@L518
  %.t1044 =l cnew %.t1042, 0
  jnz %.t1044, @L521, @L515
@L521
  %.t1045 =w copy %initvalue
  %.t1046 =w copy 0
  %.t1047 =w cnew %.t1045, %.t1046
  %.t1048 =l cnew %.t1047, 0
  jnz %.t1048, @L522, @L515
@L522
  %.t1047 =w copy 1
  jmp @L516
@L515
  %.t1047 =w copy 0
@L516
  %.t1049 =l cnew %.t1047, 0
  jnz %.t1049, @L523, @L513
@L523
  %.t1050 =w copy 1
  %.t1051 =w cnew %.t1049, %.t1050
  jnz %.t1051, @L513, @L524
@L524
  %.t1052 =w copy %initvalue
  %.t1053 =l copy $L473
  %.t1054 =l loadl $Outfile
  %.t1055 =w call $fprintf(l %.t1054, l %.t1053, w %.t1052, )
@L525
  jmp @L514
@L513
  %.t1056 =w copy %initvalue
  %.t1057 =l copy $L474
  %.t1058 =l loadl $Outfile
  %.t1059 =w call $fprintf(l %.t1058, l %.t1057, w %.t1056, )
@L514
  jmp @L502
@L506
@L526
  %.t1060 =w copy %size
  %.t1061 =l copy $L475
  %.t1062 =l loadl $Outfile
  %.t1063 =w call $fprintf(l %.t1062, l %.t1061, w %.t1060, )
@L502
  %.t1064 =w copy %i
  %i =w add %i, 1
  jmp @L497
@L498
  %.t1065 =l copy $L476
  %.t1066 =l loadl $Outfile
  %.t1067 =w call $fprintf(l %.t1066, l %.t1065, )
@L87
  ret
}
data $L527 = { b 100, b 97, b 116, b 97, b 32, b 36, b 76, b 37, b 100, b 32, b 61, b 32, b 123, b 32,  b 0 }
data $L528 = { b 98, b 32, b 37, b 100, b 44, b 32,  b 0 }
export function   $cgglobstr(w %l, l %strvalue, w %append, ) {
@L529
  %.t1068 =w copy %append
  %.t1068 =w ceqw %.t1068, 0
  %.t1069 =l cnew %.t1068, 0
  jnz %.t1069, @L531, @L530
@L531
  %.t1070 =w copy 1
  %.t1071 =w cnew %.t1069, %.t1070
  jnz %.t1071, @L530, @L532
@L532
  %.t1072 =w copy %l
  %.t1073 =l copy $L527
  %.t1074 =l loadl $Outfile
  %.t1075 =w call $fprintf(l %.t1074, l %.t1073, w %.t1072, )
@L530
  %.t1076 =l copy %strvalue
  %cptr =l copy %.t1076
@L533
  %.t1077 =l copy %cptr
  %.t1078 =w loadub %.t1077
  %.t1079 =l cnew %.t1078, 0
  jnz %.t1079, @L535, @L534
@L535
  %.t1080 =w copy 1
  %.t1081 =w cnew %.t1079, %.t1080
  jnz %.t1081, @L534, @L536
@L536
  %.t1082 =l copy %cptr
  %.t1083 =w loadub %.t1082
  %.t1084 =l copy $L528
  %.t1085 =l loadl $Outfile
  %.t1086 =w call $fprintf(l %.t1085, l %.t1084, w %.t1083, )
  %.t1087 =l copy %cptr
  %cptr =l add %cptr, 1
  jmp @L533
@L534
@L88
  ret
}
data $L537 = { b 32, b 98, b 32, b 48, b 32, b 125, b 10,  b 0 }
export function   $cgglobstrend() {
@L538
  %.t1088 =l copy $L537
  %.t1089 =l loadl $Outfile
  %.t1090 =w call $fprintf(l %.t1089, l %.t1088, )
@L89
  ret
}
data $L539 = { b 99, b 101, b 113,  b 0 }
data $L540 = { b 99, b 110, b 101,  b 0 }
data $L541 = { b 99, b 115, b 108, b 116,  b 0 }
data $L542 = { b 99, b 115, b 103, b 116,  b 0 }
data $L543 = { b 99, b 115, b 108, b 101,  b 0 }
data $L544 = { b 99, b 115, b 103, b 101,  b 0 }
data $cmplist = align 8 { l $L539, l $L540, l $L541, l $L542, l $L543, l $L544, }
data $L545 = { b 66, b 97, b 100, b 32, b 65, b 83, b 84, b 111, b 112, b 32, b 105, b 110, b 32, b 99, b 103, b 99, b 111, b 109, b 112, b 97, b 114, b 101, b 95, b 97, b 110, b 100, b 95, b 115, b 101, b 116, b 40, b 41,  b 0 }
data $L546 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 37, b 115, b 37, b 99, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgcompare_and_set(w %ASTop, w %r1, w %r2, w %type, ) {
@L547
  %q =l alloc4 1
  %.t1091 =w copy %type
  %.t1092 =w call $cgqbetype(w %.t1091, )
  storew %.t1092, %q
  %.t1093 =w copy %ASTop
  %.t1094 =w copy 13
  %.t1095 =w csltw %.t1093, %.t1094
  %.t1096 =l cnew %.t1095, 0
  jnz %.t1096, @L549, @L551
@L551
  %.t1097 =w copy %ASTop
  %.t1098 =w copy 18
  %.t1099 =w csgtw %.t1097, %.t1098
  %.t1100 =l cnew %.t1099, 0
  jnz %.t1100, @L549, @L552
@L552
  %.t1099 =w copy 0
  jmp @L550
@L549
  %.t1099 =w copy 1
@L550
  %.t1101 =l cnew %.t1099, 0
  jnz %.t1101, @L553, @L548
@L553
  %.t1102 =w copy 1
  %.t1103 =w cnew %.t1101, %.t1102
  jnz %.t1103, @L548, @L554
@L554
  %.t1104 =l copy $L545
  call $fatal(l %.t1104, )
@L548
  %.t1106 =w call $cgalloctemp()
  %r3 =w copy %.t1106
  %.t1107 =w copy %r2
  %.t1108 =w copy %r1
  %.t1109 =w loadub %q
  %.t1110 =l copy $cmplist
  %.t1111 =w copy %ASTop
  %.t1112 =w copy 13
  %.t1111 =w sub %.t1111, %.t1112
  %.t1113 =l extsw %.t1111
  %.t1114 =l shl %.t1113, 3
  %.t1110 =l add %.t1110, %.t1114
  %.t1115 =l loadl %.t1110
  %.t1116 =w loadub %q
  %.t1117 =w copy %r3
  %.t1118 =l copy $L546
  %.t1119 =l loadl $Outfile
  %.t1120 =w call $fprintf(l %.t1119, l %.t1118, w %.t1117, w %.t1116, l %.t1115, w %.t1109, w %.t1108, w %.t1107, )
  %.t1121 =w copy %r3
  %.ret =w copy %.t1121
  jmp @L90
@L90
  ret %.ret
}
data $L555 = { b 64, b 76, b 37, b 100, b 10,  b 0 }
export function   $cglabel(w %l, ) {
@L556
  %.t1122 =w copy %l
  %.t1123 =l copy $L555
  %.t1124 =l loadl $Outfile
  %.t1125 =w call $fprintf(l %.t1124, l %.t1123, w %.t1122, )
@L92
  ret
}
data $L557 = { b 32, b 32, b 106, b 109, b 112, b 32, b 64, b 76, b 37, b 100, b 10,  b 0 }
export function   $cgjump(w %l, ) {
@L558
  %.t1126 =w copy %l
  %.t1127 =l copy $L557
  %.t1128 =l loadl $Outfile
  %.t1129 =w call $fprintf(l %.t1128, l %.t1127, w %.t1126, )
@L93
  ret
}
data $L559 = { b 99, b 110, b 101,  b 0 }
data $L560 = { b 99, b 101, b 113,  b 0 }
data $L561 = { b 99, b 115, b 103, b 101,  b 0 }
data $L562 = { b 99, b 115, b 108, b 101,  b 0 }
data $L563 = { b 99, b 115, b 103, b 116,  b 0 }
data $L564 = { b 99, b 115, b 108, b 116,  b 0 }
data $invcmplist = align 8 { l $L559, l $L560, l $L561, l $L562, l $L563, l $L564, }
data $L565 = { b 66, b 97, b 100, b 32, b 65, b 83, b 84, b 111, b 112, b 32, b 105, b 110, b 32, b 99, b 103, b 99, b 111, b 109, b 112, b 97, b 114, b 101, b 95, b 97, b 110, b 100, b 95, b 115, b 101, b 116, b 40, b 41,  b 0 }
data $L566 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 37, b 115, b 37, b 99, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L567 = { b 32, b 32, b 106, b 110, b 122, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 64, b 76, b 37, b 100, b 44, b 32, b 64, b 76, b 37, b 100, b 10,  b 0 }
export function w $cgcompare_and_jump(w %ASTop, w %r1, w %r2, w %label, w %type, ) {
@L568
  %q =l alloc4 1
  %.t1130 =w copy %type
  %.t1131 =w call $cgqbetype(w %.t1130, )
  storew %.t1131, %q
  %.t1132 =w copy %ASTop
  %.t1133 =w copy 13
  %.t1134 =w csltw %.t1132, %.t1133
  %.t1135 =l cnew %.t1134, 0
  jnz %.t1135, @L570, @L572
@L572
  %.t1136 =w copy %ASTop
  %.t1137 =w copy 18
  %.t1138 =w csgtw %.t1136, %.t1137
  %.t1139 =l cnew %.t1138, 0
  jnz %.t1139, @L570, @L573
@L573
  %.t1138 =w copy 0
  jmp @L571
@L570
  %.t1138 =w copy 1
@L571
  %.t1140 =l cnew %.t1138, 0
  jnz %.t1140, @L574, @L569
@L574
  %.t1141 =w copy 1
  %.t1142 =w cnew %.t1140, %.t1141
  jnz %.t1142, @L569, @L575
@L575
  %.t1143 =l copy $L565
  call $fatal(l %.t1143, )
@L569
  %.t1145 =w call $genlabel()
  %label2 =w copy %.t1145
  %.t1146 =w call $cgalloctemp()
  %r3 =w copy %.t1146
  %.t1147 =w copy %r2
  %.t1148 =w copy %r1
  %.t1149 =w loadub %q
  %.t1150 =l copy $invcmplist
  %.t1151 =w copy %ASTop
  %.t1152 =w copy 13
  %.t1151 =w sub %.t1151, %.t1152
  %.t1153 =l extsw %.t1151
  %.t1154 =l shl %.t1153, 3
  %.t1150 =l add %.t1150, %.t1154
  %.t1155 =l loadl %.t1150
  %.t1156 =w loadub %q
  %.t1157 =w copy %r3
  %.t1158 =l copy $L566
  %.t1159 =l loadl $Outfile
  %.t1160 =w call $fprintf(l %.t1159, l %.t1158, w %.t1157, w %.t1156, l %.t1155, w %.t1149, w %.t1148, w %.t1147, )
  %.t1161 =w copy %label2
  %.t1162 =w copy %label
  %.t1163 =w copy %r3
  %.t1164 =l copy $L567
  %.t1165 =l loadl $Outfile
  %.t1166 =w call $fprintf(l %.t1165, l %.t1164, w %.t1163, w %.t1162, w %.t1161, )
  %.t1167 =w copy %label2
  call $cglabel(w %.t1167, )
  %.t1169 =w copy -1
  %.ret =w copy %.t1169
  jmp @L91
@L91
  ret %.ret
}
data $L576 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 101, b 120, b 116, b 117, b 98, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L577 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 101, b 120, b 116, b 115, b 37, b 99, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgwiden(w %r, w %oldtype, w %newtype, ) {
@L578
  %oldq =l alloc4 1
  %newq =l alloc4 1
  %.t1170 =w copy %oldtype
  %.t1171 =w call $cgqbetype(w %.t1170, )
  storew %.t1171, %oldq
  %.t1172 =w copy %newtype
  %.t1173 =w call $cgqbetype(w %.t1172, )
  storew %.t1173, %newq
  %.t1174 =w call $cgalloctemp()
  %t =w copy %.t1174
  %.t1175 =w copy %oldtype
@L580
  %.t1176 =w copy 32
  %.t1177 =w cnew %.t1175, %.t1176
  jnz %.t1177, @L581, @L583
@L583
  jmp @L582
@L582
  %.t1178 =w copy %r
  %.t1179 =w loadub %newq
  %.t1180 =w copy %t
  %.t1181 =l copy $L576
  %.t1182 =l loadl $Outfile
  %.t1183 =w call $fprintf(l %.t1182, l %.t1181, w %.t1180, w %.t1179, w %.t1178, )
  jmp @L579
@L581
@L584
  %.t1184 =w copy %r
  %.t1185 =w loadub %oldq
  %.t1186 =w loadub %newq
  %.t1187 =w copy %t
  %.t1188 =l copy $L577
  %.t1189 =l loadl $Outfile
  %.t1190 =w call $fprintf(l %.t1189, l %.t1188, w %.t1187, w %.t1186, w %.t1185, w %.t1184, )
@L579
  %.t1191 =w copy %t
  %.ret =w copy %.t1191
  jmp @L94
@L94
  ret %.ret
}
data $L585 = { b 32, b 32, b 37, b 37, b 46, b 114, b 101, b 116, b 32, b 61, b 37, b 99, b 32, b 99, b 111, b 112, b 121, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function   $cgreturn(w %reg, l %sym, ) {
@L586
  %.t1192 =w copy %reg
  %.t1193 =w copy -1
  %.t1194 =w cnew %.t1192, %.t1193
  %.t1195 =w copy 1
  %.t1196 =w cnew %.t1194, %.t1195
  jnz %.t1196, @L587, @L588
@L588
  %.t1197 =w copy %reg
  %.t1198 =l copy %sym
  %.t1199 =l copy 8
  %.t1198 =l add %.t1198, %.t1199
  %.t1200 =w loadsw %.t1198
  %.t1201 =w call $cgqbetype(w %.t1200, )
  %.t1202 =l copy $L585
  %.t1203 =l loadl $Outfile
  %.t1204 =w call $fprintf(l %.t1203, l %.t1202, w %.t1201, w %.t1197, )
@L587
  %.t1205 =l copy %sym
  %.t1206 =l copy 36
  %.t1205 =l add %.t1205, %.t1206
  %.t1207 =w loadsw %.t1205
  call $cgjump(w %.t1207, )
@L95
  ret
}
data $L589 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 99, b 111, b 112, b 121, b 32, b 37, b 99, b 37, b 115, b 10,  b 0 }
export function w $cgaddress(l %sym, ) {
@L590
  %qbeprefix =l alloc4 1
  %.t1209 =w call $cgalloctemp()
  %r =w copy %.t1209
  %.t1210 =l copy %sym
  %.t1211 =l copy 24
  %.t1210 =l add %.t1210, %.t1211
  %.t1212 =w loadsw %.t1210
  %.t1213 =w copy 1
  %.t1214 =w ceqw %.t1212, %.t1213
  %.t1215 =l cnew %.t1214, 0
  jnz %.t1215, @L595, @L597
@L597
  %.t1216 =l copy %sym
  %.t1217 =l copy 24
  %.t1216 =l add %.t1216, %.t1217
  %.t1218 =w loadsw %.t1216
  %.t1219 =w copy 5
  %.t1220 =w ceqw %.t1218, %.t1219
  %.t1221 =l cnew %.t1220, 0
  jnz %.t1221, @L595, @L598
@L598
  %.t1220 =w copy 0
  jmp @L596
@L595
  %.t1220 =w copy 1
@L596
  %.t1222 =l cnew %.t1220, 0
  jnz %.t1222, @L593, @L599
@L599
  %.t1223 =l copy %sym
  %.t1224 =l copy 24
  %.t1223 =l add %.t1223, %.t1224
  %.t1225 =w loadsw %.t1223
  %.t1226 =w copy 4
  %.t1227 =w ceqw %.t1225, %.t1226
  %.t1228 =l cnew %.t1227, 0
  jnz %.t1228, @L593, @L600
@L600
  %.t1227 =w copy 0
  jmp @L594
@L593
  %.t1227 =w copy 1
@L594
  %.t1229 =w copy 1
  %.t1230 =w cnew %.t1227, %.t1229
  jnz %.t1230, @L591, @L601
@L601
  %.t1232 =w copy 36
  %.t1231 =w copy %.t1232
  jmp @L592
@L591
  %.t1233 =w copy 37
  %.t1231 =w copy %.t1233
@L592
  storew %.t1231, %qbeprefix
  %.t1234 =l copy %sym
  %.t1235 =l copy 0
  %.t1234 =l add %.t1234, %.t1235
  %.t1236 =l loadl %.t1234
  %.t1237 =w loadub %qbeprefix
  %.t1238 =w copy %r
  %.t1239 =l copy $L589
  %.t1240 =l loadl $Outfile
  %.t1241 =w call $fprintf(l %.t1240, l %.t1239, w %.t1238, w %.t1237, l %.t1236, )
  %.t1242 =w copy %r
  %.ret =w copy %.t1242
  jmp @L96
@L96
  ret %.ret
}
data $L602 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 108, b 111, b 97, b 100, b 117, b 98, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L603 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 119, b 32, b 108, b 111, b 97, b 100, b 115, b 119, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L604 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 108, b 32, b 108, b 111, b 97, b 100, b 108, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L605 = { b 67, b 97, b 110, b 39, b 116, b 32, b 99, b 103, b 100, b 101, b 114, b 101, b 102, b 32, b 111, b 110, b 32, b 116, b 121, b 112, b 101, b 58,  b 0 }
export function w $cgderef(w %r, w %type, ) {
@L606
  %.t1243 =w copy %type
  %.t1244 =w call $value_at(w %.t1243, )
  %newtype =w copy %.t1244
  %.t1245 =w copy %newtype
  %.t1246 =w call $cgprimsize(w %.t1245, )
  %size =w copy %.t1246
  %.t1247 =w call $cgalloctemp()
  %ret =w copy %.t1247
  %.t1248 =w copy %size
@L608
  %.t1249 =w copy 1
  %.t1250 =w cnew %.t1248, %.t1249
  jnz %.t1250, @L609, @L613
@L613
  jmp @L612
@L612
  %.t1251 =w copy %r
  %.t1252 =w copy %ret
  %.t1253 =l copy $L602
  %.t1254 =l loadl $Outfile
  %.t1255 =w call $fprintf(l %.t1254, l %.t1253, w %.t1252, w %.t1251, )
  jmp @L607
@L609
  %.t1256 =w copy 4
  %.t1257 =w cnew %.t1248, %.t1256
  jnz %.t1257, @L610, @L615
@L615
  jmp @L614
@L614
  %.t1258 =w copy %r
  %.t1259 =w copy %ret
  %.t1260 =l copy $L603
  %.t1261 =l loadl $Outfile
  %.t1262 =w call $fprintf(l %.t1261, l %.t1260, w %.t1259, w %.t1258, )
  jmp @L607
@L610
  %.t1263 =w copy 8
  %.t1264 =w cnew %.t1248, %.t1263
  jnz %.t1264, @L611, @L617
@L617
  jmp @L616
@L616
  %.t1265 =w copy %r
  %.t1266 =w copy %ret
  %.t1267 =l copy $L604
  %.t1268 =l loadl $Outfile
  %.t1269 =w call $fprintf(l %.t1268, l %.t1267, w %.t1266, w %.t1265, )
  jmp @L607
@L611
@L618
  %.t1270 =w copy %type
  %.t1271 =l copy $L605
  call $fatald(l %.t1271, w %.t1270, )
@L607
  %.t1273 =w copy %ret
  %.ret =w copy %.t1273
  jmp @L97
@L97
  ret %.ret
}
data $L619 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 98, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L620 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 119, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L621 = { b 32, b 32, b 115, b 116, b 111, b 114, b 101, b 108, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 44, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L622 = { b 67, b 97, b 110, b 39, b 116, b 32, b 99, b 103, b 115, b 116, b 111, b 100, b 101, b 114, b 101, b 102, b 32, b 111, b 110, b 32, b 116, b 121, b 112, b 101, b 58,  b 0 }
export function w $cgstorderef(w %r1, w %r2, w %type, ) {
@L623
  %.t1274 =w copy %type
  %.t1275 =w call $cgprimsize(w %.t1274, )
  %size =w copy %.t1275
  %.t1276 =w copy %size
@L625
  %.t1277 =w copy 1
  %.t1278 =w cnew %.t1276, %.t1277
  jnz %.t1278, @L626, @L630
@L630
  jmp @L629
@L629
  %.t1279 =w copy %r2
  %.t1280 =w copy %r1
  %.t1281 =l copy $L619
  %.t1282 =l loadl $Outfile
  %.t1283 =w call $fprintf(l %.t1282, l %.t1281, w %.t1280, w %.t1279, )
  jmp @L624
@L626
  %.t1284 =w copy 4
  %.t1285 =w cnew %.t1276, %.t1284
  jnz %.t1285, @L627, @L632
@L632
  jmp @L631
@L631
  %.t1286 =w copy %r2
  %.t1287 =w copy %r1
  %.t1288 =l copy $L620
  %.t1289 =l loadl $Outfile
  %.t1290 =w call $fprintf(l %.t1289, l %.t1288, w %.t1287, w %.t1286, )
  jmp @L624
@L627
  %.t1291 =w copy 8
  %.t1292 =w cnew %.t1276, %.t1291
  jnz %.t1292, @L628, @L634
@L634
  jmp @L633
@L633
  %.t1293 =w copy %r2
  %.t1294 =w copy %r1
  %.t1295 =l copy $L621
  %.t1296 =l loadl $Outfile
  %.t1297 =w call $fprintf(l %.t1296, l %.t1295, w %.t1294, w %.t1293, )
  jmp @L624
@L628
@L635
  %.t1298 =w copy %type
  %.t1299 =l copy $L622
  call $fatald(l %.t1299, w %.t1298, )
@L624
  %.t1301 =w copy %r1
  %.ret =w copy %.t1301
  jmp @L98
@L98
  ret %.ret
}
data $L636 = { b 32, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 99, b 111, b 112, b 121, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function   $cgmove(w %r1, w %r2, w %type, ) {
@L637
  %.t1302 =w copy %r1
  %.t1303 =w copy %type
  %.t1304 =w call $cgqbetype(w %.t1303, )
  %.t1305 =w copy %r2
  %.t1306 =l copy $L636
  %.t1307 =l loadl $Outfile
  %.t1308 =w call $fprintf(l %.t1307, l %.t1306, w %.t1305, w %.t1304, w %.t1302, )
@L110
  ret
}
export function   $cglinenum(w %line, ) {
@L638
@L111
  ret
}
data $L639 = { b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 99, b 111, b 112, b 121, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
data $L640 = { b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 32, b 61, b 37, b 99, b 32, b 99, b 97, b 115, b 116, b 32, b 37, b 37, b 46, b 116, b 37, b 100, b 10,  b 0 }
export function w $cgcast(w %t, w %oldtype, w %newtype, ) {
@L641
  %qnew =l alloc4 1
  %.t1309 =w call $cgalloctemp()
  %ret =w copy %.t1309
  %.t1310 =w copy %newtype
  %.t1311 =w call $ptrtype(w %.t1310, )
  %.t1312 =l cnew %.t1311, 0
  jnz %.t1312, @L643, @L642
@L643
  %.t1313 =w copy 1
  %.t1314 =w cnew %.t1312, %.t1313
  jnz %.t1314, @L642, @L644
@L644
  %.t1315 =w copy %oldtype
  %.t1316 =w call $ptrtype(w %.t1315, )
  %.t1317 =l cnew %.t1316, 0
  jnz %.t1317, @L646, @L645
@L646
  %.t1318 =w copy 1
  %.t1319 =w cnew %.t1317, %.t1318
  jnz %.t1319, @L645, @L647
@L647
  %.t1320 =w copy %t
  %.ret =w copy %.t1320
  jmp @L112
@L645
  %.t1321 =w copy %newtype
  %.t1322 =w copy %oldtype
  %.t1323 =w copy %t
  %.t1324 =w call $cgwiden(w %.t1323, w %.t1322, w %.t1321, )
  %.ret =w copy %.t1324
  jmp @L112
@L642
  %.t1325 =w copy %newtype
  %.t1326 =w call $cgqbetype(w %.t1325, )
  storew %.t1326, %qnew
  %.t1327 =w copy %oldtype
  %.t1328 =w call $cgprimsize(w %.t1327, )
  %oldsize =w copy %.t1328
  %.t1329 =w copy %newtype
  %.t1330 =w call $cgprimsize(w %.t1329, )
  %newsize =w copy %.t1330
  %.t1331 =w copy %newsize
  %.t1332 =w copy %oldsize
  %.t1333 =w ceqw %.t1331, %.t1332
  %.t1334 =w copy 1
  %.t1335 =w cnew %.t1333, %.t1334
  jnz %.t1335, @L648, @L649
@L649
  %.t1336 =w copy %t
  %.ret =w copy %.t1336
  jmp @L112
@L648
  %.t1337 =w copy %newsize
  %.t1338 =w copy %oldsize
  %.t1339 =w csltw %.t1337, %.t1338
  %.t1340 =w copy 1
  %.t1341 =w cnew %.t1339, %.t1340
  jnz %.t1341, @L650, @L652
@L652
  %.t1342 =w copy %t
  %.t1343 =w loadub %qnew
  %.t1344 =w copy %ret
  %.t1345 =l copy $L639
  %.t1346 =l loadl $Outfile
  %.t1347 =w call $fprintf(l %.t1346, l %.t1345, w %.t1344, w %.t1343, w %.t1342, )
@L653
  jmp @L651
@L650
  %.t1348 =w copy %t
  %.t1349 =w loadub %qnew
  %.t1350 =w copy %ret
  %.t1351 =l copy $L640
  %.t1352 =l loadl $Outfile
  %.t1353 =w call $fprintf(l %.t1352, l %.t1351, w %.t1350, w %.t1349, w %.t1348, )
@L651
  %.t1354 =w copy %ret
  %.ret =w copy %.t1354
  jmp @L112
@L112
  ret %.ret
}
