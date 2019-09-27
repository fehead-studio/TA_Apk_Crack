package bsh.org.objectweb.asm;

import java.lang.reflect.Method;

public class Type {
  public static final int ARRAY = 9;
  
  public static final int BOOLEAN = 1;
  
  public static final Type BOOLEAN_TYPE;
  
  public static final int BYTE = 3;
  
  public static final Type BYTE_TYPE;
  
  public static final int CHAR = 2;
  
  public static final Type CHAR_TYPE;
  
  public static final int DOUBLE = 8;
  
  public static final Type DOUBLE_TYPE;
  
  public static final int FLOAT = 6;
  
  public static final Type FLOAT_TYPE;
  
  public static final int INT = 5;
  
  public static final Type INT_TYPE;
  
  public static final int LONG = 7;
  
  public static final Type LONG_TYPE;
  
  public static final int OBJECT = 10;
  
  public static final int SHORT = 4;
  
  public static final Type SHORT_TYPE;
  
  public static final int VOID = 0;
  
  public static final Type VOID_TYPE = new Type(0);
  
  private final int a;
  
  private char[] b;
  
  private int c;
  
  private int d;
  
  static  {
    BOOLEAN_TYPE = new Type(1);
    CHAR_TYPE = new Type(2);
    BYTE_TYPE = new Type(3);
    SHORT_TYPE = new Type(4);
    INT_TYPE = new Type(5);
    FLOAT_TYPE = new Type(6);
    LONG_TYPE = new Type(7);
    DOUBLE_TYPE = new Type(8);
  }
  
  private Type(int paramInt) {
    this.a = paramInt;
    this.d = 1;
  }
  
  private Type(int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3) {
    this.a = paramInt1;
    this.b = paramArrayOfChar;
    this.c = paramInt2;
    this.d = paramInt3;
  }
  
  private static Type a(char[] paramArrayOfChar, int paramInt) {
    int i;
    switch (paramArrayOfChar[paramInt]) {
      default:
        i = 1;
        break;
      case '[':
        for (i = 1;; i++) {
          int j = paramInt + i;
          if (paramArrayOfChar[j] != '[') {
            int k = i;
            if (paramArrayOfChar[j] == 'L')
              do {
                k = i + 1;
                i = k;
              } while (paramArrayOfChar[paramInt + k] != ';'); 
            return new Type(9, paramArrayOfChar, paramInt, k + 1);
          } 
        } 
      case 'Z':
        return BOOLEAN_TYPE;
      case 'V':
        return VOID_TYPE;
      case 'S':
        return SHORT_TYPE;
      case 'J':
        return LONG_TYPE;
      case 'I':
        return INT_TYPE;
      case 'F':
        return FLOAT_TYPE;
      case 'D':
        return DOUBLE_TYPE;
      case 'C':
        return CHAR_TYPE;
      case 'B':
        return BYTE_TYPE;
    } 
    while (true) {
      if (paramArrayOfChar[paramInt + i] == ';')
        return new Type(10, paramArrayOfChar, paramInt, i + 1); 
      i++;
    } 
  }
  
  private void a(StringBuffer paramStringBuffer) {
    switch (this.a) {
      default:
        paramStringBuffer.append(this.b, this.c, this.d);
        return;
      case 8:
        paramStringBuffer.append('D');
        return;
      case 7:
        paramStringBuffer.append('J');
        return;
      case 6:
        paramStringBuffer.append('F');
        return;
      case 5:
        paramStringBuffer.append('I');
        return;
      case 4:
        paramStringBuffer.append('S');
        return;
      case 3:
        paramStringBuffer.append('B');
        return;
      case 2:
        paramStringBuffer.append('C');
        return;
      case 1:
        paramStringBuffer.append('Z');
        return;
      case 0:
        break;
    } 
    paramStringBuffer.append('V');
  }
  
  private static void a(StringBuffer paramStringBuffer, Class paramClass) {
    while (true) {
      if (paramClass.isPrimitive()) {
        char c1;
        if (paramClass == int.class) {
          c1 = 'I';
        } else if (paramClass == void.class) {
          c1 = 'V';
        } else if (paramClass == boolean.class) {
          c1 = 'Z';
        } else if (paramClass == byte.class) {
          c1 = 'B';
        } else if (paramClass == char.class) {
          c1 = 'C';
        } else if (paramClass == short.class) {
          c1 = 'S';
        } else if (paramClass == double.class) {
          c1 = 'D';
        } else if (paramClass == float.class) {
          c1 = 'F';
        } else {
          c1 = 'J';
        } 
        paramStringBuffer.append(c1);
        return;
      } 
      if (paramClass.isArray()) {
        paramStringBuffer.append('[');
        paramClass = paramClass.getComponentType();
        continue;
      } 
      break;
    } 
    paramStringBuffer.append('L');
    String str = paramClass.getName();
    int i = str.length();
    byte b1;
    for (b1 = 0;; b1++) {
      if (b1 >= i) {
        paramStringBuffer.append(';');
        return;
      } 
      char c2 = str.charAt(b1);
      char c1 = c2;
      if (c2 == '.')
        c1 = '/'; 
      paramStringBuffer.append(c1);
    } 
  }
  
  public static Type[] getArgumentTypes(String paramString) {
    char[] arrayOfChar = paramString.toCharArray();
    int i = 1;
    byte b1;
    label24: for (b1 = 0;; b1 = b2) {
      int j = i + true;
      i = arrayOfChar[i];
      if (i == 41) {
        Type[] arrayOfType = new Type[b1];
        i = 1;
        for (b1 = 0;; b1++) {
          if (arrayOfChar[i] == ')')
            return arrayOfType; 
          arrayOfType[b1] = a(arrayOfChar, i);
          i += (arrayOfType[b1]).d;
        } 
        break;
      } 
      if (i == 76) {
        while (true) {
          i = j + true;
          if (arrayOfChar[j] == ';') {
            b1++;
            continue label24;
          } 
          j = i;
        } 
        break;
      } 
      byte b2 = b1;
      if (i != 91)
        b2 = b1 + 1; 
      i = j;
    } 
  }
  
  public static Type[] getArgumentTypes(Method paramMethod) {
    Class[] arrayOfClass = paramMethod.getParameterTypes();
    Type[] arrayOfType = new Type[arrayOfClass.length];
    for (int i = arrayOfClass.length - 1;; i--) {
      if (i < 0)
        return arrayOfType; 
      arrayOfType[i] = getType(arrayOfClass[i]);
    } 
  }
  
  public static String getDescriptor(Class paramClass) {
    StringBuffer stringBuffer = new StringBuffer();
    a(stringBuffer, paramClass);
    return stringBuffer.toString();
  }
  
  public static String getInternalName(Class paramClass) { return paramClass.getName().replace('.', '/'); }
  
  public static String getMethodDescriptor(Type paramType, Type[] paramArrayOfType) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append('(');
    for (byte b1 = 0;; b1++) {
      if (b1 >= paramArrayOfType.length) {
        stringBuffer.append(')');
        paramType.a(stringBuffer);
        return stringBuffer.toString();
      } 
      paramArrayOfType[b1].a(stringBuffer);
    } 
  }
  
  public static String getMethodDescriptor(Method paramMethod) {
    Class[] arrayOfClass = paramMethod.getParameterTypes();
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append('(');
    for (byte b1 = 0;; b1++) {
      if (b1 >= arrayOfClass.length) {
        stringBuffer.append(')');
        a(stringBuffer, paramMethod.getReturnType());
        return stringBuffer.toString();
      } 
      a(stringBuffer, arrayOfClass[b1]);
    } 
  }
  
  public static Type getReturnType(String paramString) { return a(paramString.toCharArray(), paramString.indexOf(')') + 1); }
  
  public static Type getReturnType(Method paramMethod) { return getType(paramMethod.getReturnType()); }
  
  public static Type getType(Class paramClass) { return paramClass.isPrimitive() ? ((paramClass == int.class) ? INT_TYPE : ((paramClass == void.class) ? VOID_TYPE : ((paramClass == boolean.class) ? BOOLEAN_TYPE : ((paramClass == byte.class) ? BYTE_TYPE : ((paramClass == char.class) ? CHAR_TYPE : ((paramClass == short.class) ? SHORT_TYPE : ((paramClass == double.class) ? DOUBLE_TYPE : ((paramClass == float.class) ? FLOAT_TYPE : LONG_TYPE)))))))) : getType(getDescriptor(paramClass)); }
  
  public static Type getType(String paramString) { return a(paramString.toCharArray(), 0); }
  
  public String getClassName() { return (new String(this.b, this.c + 1, this.d - 2)).replace('/', '.'); }
  
  public String getDescriptor() {
    StringBuffer stringBuffer = new StringBuffer();
    a(stringBuffer);
    return stringBuffer.toString();
  }
  
  public int getDimensions() {
    for (int i = 1;; i++) {
      if (this.b[this.c + i] != '[')
        return i; 
    } 
  }
  
  public Type getElementType() { return a(this.b, this.c + getDimensions()); }
  
  public String getInternalName() { return new String(this.b, this.c + 1, this.d - 2); }
  
  public int getOpcode(int paramInt) {
    if (paramInt == 46 || paramInt == 79) {
      int j = paramInt;
      switch (this.a) {
        default:
          return paramInt + 4;
        case 8:
          return paramInt + 3;
        case 7:
          return paramInt + 1;
        case 6:
          j = paramInt + 2;
        case 5:
          return j;
        case 4:
          return paramInt + 8;
        case 2:
          return paramInt + 7;
        case 1:
        case 3:
          return paramInt + 6;
        case 0:
          break;
      } 
      return paramInt + 5;
    } 
    int i = paramInt;
    switch (this.a) {
      default:
        return paramInt + 4;
      case 8:
        return paramInt + 3;
      case 7:
        return paramInt + 1;
      case 6:
        i = paramInt + 2;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        return i;
      case 0:
        break;
    } 
    return paramInt + 5;
  }
  
  public int getSize() { return (this.a == 7 || this.a == 8) ? 2 : 1; }
  
  public int getSort() { return this.a; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\org\objectweb\asm\Type.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */