package bsh;

import java.util.StringTokenizer;
import java.util.Vector;

public class StringUtil {
  public static String[] bubbleSort(String[] paramArrayOfString) {
    Vector vector = new Vector();
    for (byte b = 0;; b++) {
      String str;
      if (b >= paramArrayOfString.length) {
        int i = vector.size();
        b = 1;
        while (true) {
          if (!b) {
            paramArrayOfString = new String[i];
            vector.copyInto(paramArrayOfString);
            return paramArrayOfString;
          } 
          byte b1 = 0;
          b = 0;
          while (b1 < i - 1) {
            str = (String)vector.elementAt(b1);
            byte b2 = b1 + 1;
            if (str.compareTo((String)vector.elementAt(b2)) > 0) {
              str = (String)vector.elementAt(b2);
              vector.removeElementAt(b2);
              vector.insertElementAt(str, b1);
              b = 1;
            } 
            b1 = b2;
          } 
        } 
        break;
      } 
      vector.addElement(str[b]);
    } 
  }
  
  public static String maxCommonPrefix(String paramString1, String paramString2) {
    for (byte b = 0;; b++) {
      if (!paramString1.regionMatches(0, paramString2, 0, b))
        return paramString1.substring(0, b - 1); 
    } 
  }
  
  public static String methodString(String paramString, Class[] paramArrayOfClass) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(paramString);
    stringBuffer.append("(");
    stringBuffer = new StringBuffer(stringBuffer.toString());
    if (paramArrayOfClass.length > 0)
      stringBuffer.append(" "); 
    for (byte b = 0;; b++) {
      if (b >= paramArrayOfClass.length) {
        stringBuffer.append(")");
        return stringBuffer.toString();
      } 
      String str = paramArrayOfClass[b];
      StringBuffer stringBuffer1 = new StringBuffer();
      if (str == null) {
        str = "null";
      } else {
        str = str.getName();
      } 
      stringBuffer1.append(str);
      if (b < paramArrayOfClass.length - 1) {
        str = ", ";
      } else {
        str = " ";
      } 
      stringBuffer1.append(str);
      stringBuffer.append(stringBuffer1.toString());
    } 
  }
  
  public static String normalizeClassName(Class paramClass) { return Reflect.normalizeClassName(paramClass); }
  
  public static String[] split(String paramString1, String paramString2) {
    Vector vector = new Vector();
    StringTokenizer stringTokenizer = new StringTokenizer(paramString1, paramString2);
    while (true) {
      String[] arrayOfString;
      if (!stringTokenizer.hasMoreTokens()) {
        arrayOfString = new String[vector.size()];
        vector.copyInto(arrayOfString);
        return arrayOfString;
      } 
      vector.addElement(arrayOfString.nextToken());
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\StringUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */