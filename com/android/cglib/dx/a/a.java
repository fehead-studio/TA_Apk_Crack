package com.android.cglib.dx.a;

public final class a {
  public static String a(int paramInt) {
    String str;
    if (paramInt >= 14) {
      str = "036";
    } else {
      str = "035";
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("dex\n");
    stringBuilder.append(str);
    stringBuilder.append("\000");
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */