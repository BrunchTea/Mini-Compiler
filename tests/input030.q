export data $buf = align 8 { l 0, }
data $L7 = { b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32, b 32,  b 0 }
data $L8 = { b 105, b 110, b 112, b 117, b 116, b 48, b 51, b 48, b 46, b 99,  b 0 }
export function w $main() {
@L9
  %.t1 =l copy $L7
  storel %.t1, $buf
  %.t2 =w copy 0
  %.t3 =l copy $L8
  %.t4 =w call $open(l %.t3, w %.t2, )
  %zin =w copy %.t4
  %.t5 =w copy %zin
  %.t6 =w copy -1
  %.t7 =w ceqw %.t5, %.t6
  %.t8 =w copy 1
  %.t9 =w cnew %.t7, %.t8
  jnz %.t9, @L10, @L11
@L11
  %.t10 =w copy 1
  %.t11 =w extub %.t10
  %.ret =w copy %.t11
  jmp @L6
@L10
@L12
  %.t12 =w copy 60
  %.t13 =l loadl $buf
  %.t14 =w copy %zin
  %.t15 =w call $read(w %.t14, l %.t13, w %.t12, )
  %cnt =w copy %.t15
  %.t16 =w copy 0
  %.t17 =w csgtw %.t15, %.t16
  %.t18 =w copy 1
  %.t19 =w cnew %.t17, %.t18
  jnz %.t19, @L13, @L14
@L14
  %.t20 =w copy %cnt
  %.t21 =l loadl $buf
  %.t22 =w copy 1
  %.t23 =w call $write(w %.t22, l %.t21, w %.t20, )
  jmp @L12
@L13
  %.t24 =w copy %zin
  %.t25 =w call $close(w %.t24, )
  %.t26 =w copy 0
  %.ret =w copy %.t26
  jmp @L6
@L6
  ret %.ret
}
