data $L25 = { b 102, b 114, b 101, b 100,  b 0 }
export data $filename = align 8 { l $L25, }
data $L27 = { b 85, b 110, b 97, b 98, b 108, b 101, b 32, b 116, b 111, b 32, b 111, b 112, b 101, b 110, b 32, b 37, b 115, b 58, b 32, b 37, b 115, b 10,  b 0 }
export function w $main() {
@L28
  %.t1 =l call $__errno_location()
  %.t2 =w loadsw %.t1
  %.t3 =l call $strerror(w %.t2, )
  %.t4 =l loadl $filename
  %.t5 =l copy $L27
  %.t6 =l loadl $stdout
  %.t7 =w call $fprintf(l %.t6, l %.t5, l %.t4, l %.t3, )
  %.t8 =w copy 0
  %.ret =w copy %.t8
  jmp @L26
@L26
  ret %.ret
}
