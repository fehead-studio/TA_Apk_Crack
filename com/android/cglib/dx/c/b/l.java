package com.android.cglib.dx.c.b;

import com.android.cglib.dx.d.i;

public final class l {
  public static String a(int paramInt) {
    StringBuilder stringBuilder;
    switch (paramInt) {
      default:
        stringBuilder = new StringBuilder();
        stringBuilder.append("unknown-");
        stringBuilder.append(i.e(paramInt));
        return stringBuilder.toString();
      case 57:
        return "fill-array-data";
      case 56:
        return "move-result-pseudo";
      case 55:
        return "move-result";
      case 53:
        return "invoke-interface";
      case 52:
        return "invoke-direct";
      case 51:
        return "invoke-super";
      case 50:
        return "invoke-virtual";
      case 49:
        return "invoke-static";
      case 48:
        return "put-static";
      case 47:
        return "put-field";
      case 46:
        return "get-static";
      case 45:
        return "get-field";
      case 44:
        return "instance-of";
      case 43:
        return "check-cast";
      case 42:
        return "filled-new-array";
      case 41:
        return "new-array";
      case 40:
        return "new-instance";
      case 39:
        return "aput";
      case 38:
        return "aget";
      case 37:
        return "monitor-exit";
      case 36:
        return "monitor-enter";
      case 35:
        return "throw";
      case 34:
        return "array-length";
      case 33:
        return "return";
      case 32:
        return "to-short";
      case 31:
        return "to-char";
      case 30:
        return "to-byte";
      case 29:
        return "conv";
      case 28:
        return "cmpg";
      case 27:
        return "cmpl";
      case 26:
        return "not";
      case 25:
        return "ushr";
      case 24:
        return "shr";
      case 23:
        return "shl";
      case 22:
        return "xor";
      case 21:
        return "or";
      case 20:
        return "and";
      case 19:
        return "neg";
      case 18:
        return "rem";
      case 17:
        return "div";
      case 16:
        return "mul";
      case 15:
        return "sub";
      case 14:
        return "add";
      case 13:
        return "switch";
      case 12:
        return "if-gt";
      case 11:
        return "if-le";
      case 10:
        return "if-ge";
      case 9:
        return "if-lt";
      case 8:
        return "if-ne";
      case 7:
        return "if-eq";
      case 6:
        return "goto";
      case 5:
        return "const";
      case 4:
        return "move-exception";
      case 3:
        return "move-param";
      case 2:
        return "move";
      case 1:
        break;
    } 
    return "nop";
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */