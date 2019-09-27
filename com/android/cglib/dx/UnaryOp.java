package com.android.cglib.dx;

import com.android.cglib.dx.c.b.p;
import com.android.cglib.dx.c.b.r;

public static final abstract enum UnaryOp {
  NEGATE, NOT;
  
  static  {
    // Byte code:
    //   0: new com/android/cglib/dx/UnaryOp$1
    //   3: dup
    //   4: ldc 'NOT'
    //   6: iconst_0
    //   7: invokespecial <init> : (Ljava/lang/String;I)V
    //   10: putstatic com/android/cglib/dx/UnaryOp.NOT : Lcom/android/cglib/dx/UnaryOp;
    //   13: new com/android/cglib/dx/UnaryOp$2
    //   16: dup
    //   17: ldc 'NEGATE'
    //   19: iconst_1
    //   20: invokespecial <init> : (Ljava/lang/String;I)V
    //   23: putstatic com/android/cglib/dx/UnaryOp.NEGATE : Lcom/android/cglib/dx/UnaryOp;
    //   26: iconst_2
    //   27: anewarray com/android/cglib/dx/UnaryOp
    //   30: dup
    //   31: iconst_0
    //   32: getstatic com/android/cglib/dx/UnaryOp.NOT : Lcom/android/cglib/dx/UnaryOp;
    //   35: aastore
    //   36: dup
    //   37: iconst_1
    //   38: getstatic com/android/cglib/dx/UnaryOp.NEGATE : Lcom/android/cglib/dx/UnaryOp;
    //   41: aastore
    //   42: putstatic com/android/cglib/dx/UnaryOp.$VALUES : [Lcom/android/cglib/dx/UnaryOp;
    //   45: return
  }
  
  abstract p rop(TypeId<?> paramTypeId);
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\UnaryOp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */