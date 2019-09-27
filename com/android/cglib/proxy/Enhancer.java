package com.android.cglib.proxy;

import android.content.Context;
import com.a.a.a.a.a.a.a;
import com.android.cglib.dx.Code;
import com.android.cglib.dx.Comparison;
import com.android.cglib.dx.DexMaker;
import com.android.cglib.dx.FieldId;
import com.android.cglib.dx.Label;
import com.android.cglib.dx.Local;
import com.android.cglib.dx.MethodId;
import com.android.cglib.dx.TypeId;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class Enhancer {
  private Context a;
  
  private Class<?> b;
  
  private MethodInterceptor c;
  
  private MethodFilter d;
  
  public Enhancer(Context paramContext) { this.a = paramContext; }
  
  private <S> void a(DexMaker paramDexMaker, TypeId<?> paramTypeId1, TypeId<S> paramTypeId2) {
    TypeId typeId2;
    TypeId typeId3;
    TypeId typeId4;
    TypeId typeId5;
    TypeId typeId6;
    TypeId typeId7;
    TypeId typeId1 = (typeId6 = (typeId5 = (typeId4 = (typeId2 = (typeId3 = (typeId7 = TypeId.get(MethodInterceptor.class)).get(MethodProxyExecuter.class)).get(Class.class)).get(Class[].class)).get(String.class)).get(Object.class)).get(Object[].class);
    FieldId fieldId = paramTypeId2.getField(typeId7, "methodInterceptor");
    paramDexMaker.declare(fieldId, 2, null);
    for (Constructor constructor : this.b.getDeclaredConstructors()) {
      if ((constructor.getModifiers() & 0x8) == 0 && (constructor.getModifiers() & 0x10) == 0)
        try {
          a(paramDexMaker, paramTypeId1, paramTypeId2, constructor, fieldId);
        } catch (Exception constructor) {
          a.a(constructor);
        }  
    } 
    byte b1 = 0;
    Code code = paramDexMaker.declare(paramTypeId2.getMethod(TypeId.VOID, "setMethodInterceptor_Enhancer", new TypeId[] { typeId7 }), 1);
    code.iput(fieldId, code.getThis(paramTypeId2), code.getParameter(0, typeId7));
    code.returnVoid();
    code = paramDexMaker.declare(paramTypeId2.getMethod(TypeId.OBJECT, "executeSuperMethod_Enhancer", new TypeId[] { typeId5, typeId4, typeId1 }), 1);
    Local local1 = code.newLocal(typeId6);
    Local local2 = code.newLocal(typeId2);
    Local local3 = code.getThis(paramTypeId2);
    code.invokeVirtual(paramTypeId2.getMethod(typeId2, "getClass", new TypeId[0]), local2, local3, new Local[0]);
    code.invokeStatic(typeId3.getMethod(TypeId.OBJECT, "executeMethod", new TypeId[] { typeId2, typeId5, typeId4, typeId1, typeId6 }), local1, new Local[] { local2, code.getParameter(0, typeId5), code.getParameter(1, typeId4), code.getParameter(2, typeId1), local3 });
    code.returnValue(local1);
    Method[] arrayOfMethod = this.b.getMethods();
    int i = arrayOfMethod.length;
    while (b1 < i) {
      method = arrayOfMethod[b1];
      String str = method.getName();
      if (!str.contains("_Enhancer") && !str.contains("_Super") && (method.getModifiers() & 0x8) == 0 && (method.getModifiers() & 0x10) == 0 && (method.getModifiers() & 0x100) == 0 && ((method.getModifiers() & 0x400) != 0 || this.d == null || this.d.filter(method, str)))
        try {
          a(paramDexMaker, paramTypeId1, paramTypeId2, method, str, fieldId);
        } catch (Exception method) {
          a.a(method);
        }  
      b1++;
    } 
  }
  
  private void a(DexMaker paramDexMaker, TypeId<?> paramTypeId1, TypeId<?> paramTypeId2, Constructor paramConstructor, FieldId<?, MethodInterceptor> paramFieldId) {
    MethodId methodId2;
    byte b1;
    MethodId methodId1;
    Local[] arrayOfLocal;
    TypeId.get(MethodInterceptor.class).get(Class.class).get(Class[].class).get(String.class).get(Object.class).get(Object[].class);
    Class[] arrayOfClass = paramConstructor.getParameterTypes();
    byte b2 = 0;
    if (arrayOfClass != null && arrayOfClass.length > 0) {
      b1 = 1;
    } else {
      b1 = 0;
    } 
    if (b1) {
      methodId2 = new TypeId[arrayOfClass.length];
      byte b3 = 0;
      while (true) {
        TypeId[] arrayOfTypeId = methodId2;
        if (b3 < arrayOfClass.length) {
          methodId2[b3] = TypeId.get(arrayOfClass[b3]);
          b3++;
          continue;
        } 
        break;
      } 
    } else {
      paramFieldId = null;
    } 
    if (b1) {
      methodId2 = paramTypeId2.getConstructor(paramFieldId);
      methodId1 = paramTypeId1.getConstructor(paramFieldId);
    } else {
      methodId2 = paramTypeId2.getConstructor(new TypeId[0]);
      methodId1 = methodId1.getConstructor(new TypeId[0]);
    } 
    Code code = paramDexMaker.declare(methodId2, paramConstructor.getModifiers());
    Local local = code.getThis(paramTypeId2);
    if (b1) {
      Local[] arrayOfLocal1 = new Local[arrayOfClass.length];
      b1 = b2;
      while (true) {
        arrayOfLocal = arrayOfLocal1;
        if (b1 < arrayOfClass.length) {
          arrayOfLocal1[b1] = code.getParameter(b1, paramFieldId[b1]);
          b1++;
          continue;
        } 
        break;
      } 
    } else {
      arrayOfLocal = new Local[0];
    } 
    code.invokeDirect(methodId1, null, local, arrayOfLocal);
    code.returnVoid();
  }
  
  private void a(DexMaker paramDexMaker, TypeId<?> paramTypeId1, TypeId<?> paramTypeId2, Method paramMethod, String paramString, FieldId<?, MethodInterceptor> paramFieldId) {
    TypeId[] arrayOfTypeId;
    MethodId methodId3;
    byte b1;
    Local local3;
    MethodId methodId2;
    MethodId methodId1;
    TypeId typeId2;
    TypeId typeId3;
    TypeId typeId4;
    TypeId typeId5;
    TypeId typeId6;
    TypeId typeId7;
    TypeId typeId8 = (typeId7 = (typeId6 = (typeId5 = (typeId4 = (typeId3 = (typeId2 = TypeId.get(MethodInterceptor.class)).get(MethodProxyExecuter.class)).get(Class.class)).get(Class[].class)).get(String.class)).get(Object.class)).get(Object[].class);
    Class clazz = paramMethod.getReturnType();
    boolean bool = clazz.getSimpleName().equals("void");
    TypeId typeId1 = TypeId.get(clazz);
    Local local6 = paramMethod.getParameterTypes();
    if (local6 != null && local6.length > 0) {
      b1 = 1;
    } else {
      b1 = 0;
    } 
    if (b1) {
      arrayOfTypeId = new TypeId[local6.length];
      byte b2;
      for (b2 = 0; b2 < local6.length; b2++)
        arrayOfTypeId[b2] = TypeId.get(local6[b2]); 
      methodId3 = paramTypeId2.getMethod(typeId1, paramString, arrayOfTypeId);
    } else {
      methodId3 = paramTypeId2.getMethod(typeId1, paramString, new TypeId[0]);
      arrayOfTypeId = null;
    } 
    Code code2 = paramDexMaker.declare(methodId3, paramMethod.getModifiers() & 0xFFFFFBFF);
    Local local5 = code2.newLocal(typeId1);
    if (clazz.isPrimitive()) {
      arrayOfLocal = code2.newLocal(TypeId.get(Const.getPackedType(clazz)));
    } else {
      arrayOfLocal = null;
    } 
    Local local15 = code2.newLocal(TypeId.INT);
    Local local9 = code2.newLocal(typeId2);
    Local local10 = code2.newLocal(TypeId.get(String.class));
    Local local8 = code2.newLocal(typeId4);
    Local local11 = code2.newLocal(typeId4);
    Local local12 = code2.newLocal(typeId5);
    Local local13 = code2.newLocal(typeId8);
    Local local4 = code2.newLocal(typeId7);
    Local local7 = code2.newLocal(TypeId.OBJECT);
    Local local14 = code2.getThis(paramTypeId2);
    code2.iget(paramFieldId, local9, local14);
    code2.loadConstant(local10, paramString);
    code2.invokeVirtual(paramTypeId2.getMethod(typeId4, "getClass", new TypeId[0]), local11, local14, new Local[0]);
    if (b1) {
      code2.loadConstant(local15, Integer.valueOf(local6.length));
      code2.newArray(local12, local15);
      code2.newArray(local13, local15);
      byte b2 = 0;
      local3 = local6;
      local6 = local8;
      while (b2 < local3.length) {
        code2.loadConstant(local15, Integer.valueOf(b2));
        code2.loadConstant(local6, local3[b2]);
        code2.aput(local12, local15, local6);
        if (local3[b2].isPrimitive()) {
          TypeId typeId = TypeId.get(Const.getPackedType(local3[b2]));
          MethodId methodId = typeId.getMethod(typeId, "valueOf", new TypeId[] { arrayOfTypeId[b2] });
          Local local17 = code2.getParameter(b2, arrayOfTypeId[b2]);
          Local local16 = local4;
          code2.invokeStatic(methodId, local16, new Local[] { local17 });
          code2.aput(local13, local15, local16);
        } else {
          code2.aput(local13, local15, code2.getParameter(b2, arrayOfTypeId[b2]));
        } 
        b2++;
      } 
    } else {
      local3 = local6;
      code2.loadConstant(local12, null);
      code2.loadConstant(local13, null);
    } 
    MethodId methodId4 = typeId3.getMethod(TypeId.OBJECT, "executeInterceptor", new TypeId[] { typeId2, typeId4, typeId6, typeId5, typeId8, typeId7 });
    if (bool) {
      local4 = null;
    } else {
      local4 = local7;
    } 
    code2.invokeStatic(methodId4, local4, new Local[] { local9, local11, local10, local12, local13, local14 });
    if (bool) {
      code2.returnVoid();
    } else {
      MethodId methodId;
      if (clazz.isPrimitive()) {
        Label label = new Label();
        code2.loadConstant(arrayOfLocal, null);
        code2.compare(Comparison.EQ, label, local7, arrayOfLocal);
        code2.cast(arrayOfLocal, local7);
        methodId = TypeId.get(Const.getPackedType(clazz)).getMethod(typeId1, Const.getPrimitiveValueMethodName(clazz), new TypeId[0]);
        local4 = local5;
        code2.invokeVirtual(methodId, local4, arrayOfLocal, new Local[0]);
        code2.returnValue(local4);
        code2.mark(label);
        code2.loadConstant(local4, Integer.valueOf(0));
      } else {
        code2.cast(local5, methodId);
      } 
      code2.returnValue(local5);
    } 
    if (b1) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(paramString);
      stringBuilder.append("_Super");
      MethodId methodId = paramTypeId2.getMethod(typeId1, stringBuilder.toString(), arrayOfTypeId);
      methodId1 = paramTypeId1.getMethod(typeId1, paramString, arrayOfTypeId);
      methodId2 = methodId;
    } else {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(methodId2);
      stringBuilder.append("_Super");
      MethodId methodId = paramTypeId2.getMethod(typeId1, stringBuilder.toString(), new TypeId[0]);
      methodId1 = methodId1.getMethod(typeId1, methodId2, new TypeId[0]);
      methodId2 = methodId;
    } 
    Local[] arrayOfLocal = null;
    local4 = null;
    Code code1 = paramDexMaker.declare(methodId2, paramMethod.getModifiers());
    Local local1 = code1.newLocal(typeId1);
    Local local2 = code1.getThis(paramTypeId2);
    if (b1) {
      Local local;
      arrayOfLocal = new Local[local3.length];
      for (b1 = 0; b1 < local3.length; b1++)
        arrayOfLocal[b1] = code1.getParameter(b1, arrayOfTypeId[b1]); 
      if (bool) {
        local = local4;
      } else {
        local = local1;
      } 
      code1.invokeSuper(methodId1, local, local2, arrayOfLocal);
    } else {
      Local local;
      if (bool) {
        local = arrayOfLocal;
      } else {
        local = local1;
      } 
      code1.invokeSuper(methodId1, local, local2, new Local[0]);
    } 
    if (bool) {
      code1.returnVoid();
      return;
    } 
    code1.returnValue(local1);
  }
  
  public Class<?> create() {
    str1 = this.b.getName().replace(".", "/");
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(str1);
    stringBuilder1.append("_Enhancer");
    stringBuilder1.append("_");
    stringBuilder1.append(hashCode());
    String str2 = stringBuilder1.toString();
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append("L");
    stringBuilder2.append(str1);
    stringBuilder2.append(";");
    TypeId typeId1 = TypeId.get(stringBuilder2.toString());
    StringBuilder stringBuilder3 = new StringBuilder();
    stringBuilder3.append("L");
    stringBuilder3.append(str2);
    stringBuilder3.append(";");
    TypeId typeId2;
    TypeId typeId3 = (typeId2 = TypeId.get(stringBuilder3.toString())).get(EnhancerInterface.class);
    String str3 = this.a.getExternalFilesDir("dexfiles").getAbsolutePath();
    DexMaker dexMaker = new DexMaker();
    StringBuilder stringBuilder4 = new StringBuilder();
    stringBuilder4.append(str1);
    stringBuilder4.append(".proxy");
    dexMaker.declare(typeId2, stringBuilder4.toString(), 1, typeId1, new TypeId[] { typeId3 });
    a(dexMaker, typeId1, typeId2);
    try {
      return dexMaker.generateAndLoad(Enhancer.class.getClassLoader(), new File(str3)).loadClass(str2);
    } catch (IOException|ClassNotFoundException str1) {
      a.a(str1);
      return null;
    } 
  }
  
  public void setInterceptor(MethodInterceptor paramMethodInterceptor) { this.c = paramMethodInterceptor; }
  
  public void setMethodFilter(MethodFilter paramMethodFilter) { this.d = paramMethodFilter; }
  
  public void setSuperclass(Class<?> paramClass) { this.b = paramClass; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\proxy\Enhancer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */