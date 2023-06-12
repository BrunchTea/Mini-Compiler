data $L18 = { b 69, b 79, b 70,  b 0 }
data $L19 = { b 61,  b 0 }
data $L20 = { b 124, b 124,  b 0 }
data $L21 = { b 38, b 38,  b 0 }
data $L22 = { b 124,  b 0 }
data $L23 = { b 94,  b 0 }
data $L24 = { b 38,  b 0 }
data $L25 = { b 61, b 61,  b 0 }
data $L26 = { b 33, b 61,  b 0 }
data $L27 = { b 44,  b 0 }
data $L28 = { b 62,  b 0 }
data $L29 = { b 60, b 61,  b 0 }
data $L30 = { b 62, b 61,  b 0 }
data $L31 = { b 60, b 60,  b 0 }
data $L32 = { b 62, b 62,  b 0 }
data $L33 = { b 43,  b 0 }
data $L34 = { b 45,  b 0 }
data $L35 = { b 42,  b 0 }
data $L36 = { b 47,  b 0 }
data $L37 = { b 43, b 43,  b 0 }
data $L38 = { b 45, b 45,  b 0 }
data $L39 = { b 126,  b 0 }
data $L40 = { b 33,  b 0 }
data $L41 = { b 118, b 111, b 105, b 100,  b 0 }
data $L42 = { b 99, b 104, b 97, b 114,  b 0 }
data $L43 = { b 105, b 110, b 116,  b 0 }
data $L44 = { b 108, b 111, b 110, b 103,  b 0 }
data $L45 = { b 105, b 102,  b 0 }
data $L46 = { b 101, b 108, b 115, b 101,  b 0 }
data $L47 = { b 119, b 104, b 105, b 108, b 101,  b 0 }
data $L48 = { b 102, b 111, b 114,  b 0 }
data $L49 = { b 114, b 101, b 116, b 117, b 114, b 110,  b 0 }
data $L50 = { b 115, b 116, b 114, b 117, b 99, b 116,  b 0 }
data $L51 = { b 117, b 110, b 105, b 111, b 110,  b 0 }
data $L52 = { b 101, b 110, b 117, b 109,  b 0 }
data $L53 = { b 116, b 121, b 112, b 101, b 100, b 101, b 102,  b 0 }
data $L54 = { b 101, b 120, b 116, b 101, b 114, b 110,  b 0 }
data $L55 = { b 98, b 114, b 101, b 97, b 107,  b 0 }
data $L56 = { b 99, b 111, b 110, b 116, b 105, b 110, b 117, b 101,  b 0 }
data $L57 = { b 115, b 119, b 105, b 116, b 99, b 104,  b 0 }
data $L58 = { b 99, b 97, b 115, b 101,  b 0 }
data $L59 = { b 100, b 101, b 102, b 97, b 117, b 108, b 116,  b 0 }
data $L60 = { b 105, b 110, b 116, b 108, b 105, b 116,  b 0 }
data $L61 = { b 115, b 116, b 114, b 108, b 105, b 116,  b 0 }
data $L62 = { b 59,  b 0 }
data $L63 = { b 105, b 100, b 101, b 110, b 116, b 105, b 102, b 105, b 101, b 114,  b 0 }
data $L64 = { b 123,  b 0 }
data $L65 = { b 125,  b 0 }
data $L66 = { b 40,  b 0 }
data $L67 = { b 41,  b 0 }
data $L68 = { b 91,  b 0 }
data $L69 = { b 93,  b 0 }
data $L70 = { b 44,  b 0 }
data $L71 = { b 46,  b 0 }
data $L72 = { b 45, b 62,  b 0 }
data $L73 = { b 58,  b 0 }
data $L74 = {  b 0 }
export data $Tstring = align 8 { l $L18, l $L19, l $L20, l $L21, l $L22, l $L23, l $L24, l $L25, l $L26, l $L27, l $L28, l $L29, l $L30, l $L31, l $L32, l $L33, l $L34, l $L35, l $L36, l $L37, l $L38, l $L39, l $L40, l $L41, l $L42, l $L43, l $L44, l $L45, l $L46, l $L47, l $L48, l $L49, l $L50, l $L51, l $L52, l $L53, l $L54, l $L55, l $L56, l $L57, l $L58, l $L59, l $L60, l $L61, l $L62, l $L63, l $L64, l $L65, l $L66, l $L67, l $L68, l $L69, l $L70, l $L71, l $L72, l $L73, l $L74, }
data $L76 = { b 37, b 115, b 10,  b 0 }
export function w $main() {
@L77
  %.t1 =w copy 0
  %i =w copy %.t1
@L78
  %.t2 =w copy 1
  %.t3 =l cnew %.t2, 0
  jnz %.t3, @L80, @L79
@L80
  %.t4 =w copy 1
  %.t5 =w cnew %.t3, %.t4
  jnz %.t5, @L79, @L81
@L81
  %.t6 =l copy $Tstring
  %.t7 =w copy %i
  %.t8 =l extsw %.t7
  %.t9 =l shl %.t8, 3
  %.t6 =l add %.t6, %.t9
  %.t10 =l loadl %.t6
  %str =l copy %.t10
  %.t11 =l copy %str
  %.t12 =w loadub %.t11
  %.t13 =w copy 0
  %.t14 =w ceqw %.t12, %.t13
  %.t15 =w copy 1
  %.t16 =w cnew %.t14, %.t15
  jnz %.t16, @L82, @L83
@L83
  jmp @L79
@L82
  %.t17 =l copy %str
  %.t18 =l copy $L76
  %.t19 =w call $printf(l %.t18, l %.t17, )
  %.t20 =w copy %i
  %i =w add %i, 1
  jmp @L78
@L79
  %.t21 =w copy 0
  %.ret =w copy %.t21
  jmp @L75
@L75
  ret %.ret
}
