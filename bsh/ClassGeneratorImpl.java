package bsh;

import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class ClassGeneratorImpl extends ClassGenerator {
  static Variable[] a(BSHBlock paramBSHBlock, CallStack paramCallStack, Interpreter paramInterpreter, String paramString) {
    ArrayList arrayList = new ArrayList();
    byte b = 0;
    label20: while (true) {
      if (b >= paramBSHBlock.jjtGetNumChildren())
        return (Variable[])arrayList.toArray(new Variable[0]); 
      SimpleNode simpleNode = (SimpleNode)paramBSHBlock.jjtGetChild(b);
      if (simpleNode instanceof BSHTypedVariableDeclaration) {
        BSHTypedVariableDeclaration bSHTypedVariableDeclaration = (BSHTypedVariableDeclaration)simpleNode;
        Modifiers modifiers = bSHTypedVariableDeclaration.modifiers;
        String str = bSHTypedVariableDeclaration.getTypeDescriptor(paramCallStack, paramInterpreter, paramString);
        BSHVariableDeclarator[] arrayOfBSHVariableDeclarator = bSHTypedVariableDeclaration.a();
        for (byte b1 = 0;; b1++) {
          if (b1 >= arrayOfBSHVariableDeclarator.length) {
            b++;
            continue label20;
          } 
          str1 = (arrayOfBSHVariableDeclarator[b1]).name;
          try {
            arrayList.add(new Variable(str1, str, null, modifiers));
          } catch (UtilEvalError str1) {}
        } 
        break;
      } 
      continue;
    } 
  }
  
  static DelayedEvalBshMethod[] b(BSHBlock paramBSHBlock, CallStack paramCallStack, Interpreter paramInterpreter, String paramString) {
    ArrayList arrayList = new ArrayList();
    byte b;
    for (b = 0;; b++) {
      String str = paramString;
      if (b >= paramBSHBlock.jjtGetNumChildren())
        return (DelayedEvalBshMethod[])arrayList.toArray(new DelayedEvalBshMethod[0]); 
      SimpleNode simpleNode = (SimpleNode)paramBSHBlock.jjtGetChild(b);
      if (simpleNode instanceof BSHMethodDeclaration) {
        simpleNode = (BSHMethodDeclaration)simpleNode;
        simpleNode.a();
        Modifiers modifiers = simpleNode.modifiers;
        String str1 = simpleNode.name;
        String str2 = simpleNode.a(paramCallStack, paramInterpreter, str);
        BSHReturnType bSHReturnType = simpleNode.b();
        BSHFormalParameters bSHFormalParameters = simpleNode.b;
        String[] arrayOfString = bSHFormalParameters.getTypeDescriptors(paramCallStack, paramInterpreter, str);
        arrayList.add(new DelayedEvalBshMethod(str1, str2, bSHReturnType, simpleNode.b.getParamNames(), arrayOfString, bSHFormalParameters, simpleNode.c, null, modifiers, paramCallStack, paramInterpreter));
      } 
    } 
  }
  
  public static Class generateClassImpl(String paramString, Modifiers paramModifiers, Class[] paramArrayOfClass, Class paramClass, BSHBlock paramBSHBlock, boolean paramBoolean, CallStack paramCallStack, Interpreter paramInterpreter) {
    try {
      String str2;
      Capabilities.setAccessibility(true);
      NameSpace nameSpace1 = paramCallStack.top();
      String str3 = nameSpace1.c();
      if (nameSpace1.d) {
        str2 = new StringBuffer();
        str2.append(nameSpace1.getName());
        str2.append("$");
        str2.append(paramString);
        paramString = str2.toString();
      } 
      if (str3 == null) {
        str2 = paramString;
      } else {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str3);
        stringBuffer.append(".");
        stringBuffer.append(paramString);
        str2 = stringBuffer.toString();
      } 
      BshClassManager bshClassManager = paramInterpreter.getClassManager();
      bshClassManager.c(str2);
      NameSpace nameSpace2 = new NameSpace(nameSpace1, paramString);
      nameSpace2.d = true;
      paramCallStack.push(nameSpace2);
      paramBSHBlock.a(paramCallStack, paramInterpreter, true, ClassNodeFilter.CLASSCLASSES);
      byte[] arrayOfByte = (new ClassGeneratorUtil(paramModifiers, paramString, str3, paramClass, paramArrayOfClass, a(paramBSHBlock, paramCallStack, paramInterpreter, str3), b(paramBSHBlock, paramCallStack, paramInterpreter, str3), nameSpace2, paramBoolean)).generateClass();
      str1 = System.getProperty("debugClasses");
      if (str1 != null)
        try {
          StringBuffer stringBuffer = new StringBuffer();
          stringBuffer.append(str1);
          stringBuffer.append("/");
          stringBuffer.append(paramString);
          stringBuffer.append(".class");
          FileOutputStream fileOutputStream = new FileOutputStream(stringBuffer.toString());
          fileOutputStream.write(arrayOfByte);
          fileOutputStream.close();
        } catch (IOException str1) {} 
      Class clazz = bshClassManager.defineClass(str2, arrayOfByte);
      nameSpace1.importClass(str2.replace('$', '.'));
      try {
        StringBuffer stringBuffer;
        nameSpace2.a("_bshInstanceInitializer", paramBSHBlock, false);
        nameSpace2.a(clazz);
        paramBSHBlock.a(paramCallStack, paramInterpreter, true, ClassNodeFilter.CLASSSTATIC);
        paramCallStack.pop();
        if (!clazz.isInterface()) {
          StringBuffer stringBuffer1 = new StringBuffer();
          stringBuffer1.append("_bshStatic");
          stringBuffer1.append(paramString);
          paramString = stringBuffer1.toString();
          try {
            Reflect.a(clazz, paramString).assign(nameSpace2.a(paramInterpreter), false);
          } catch (Exception paramString) {
            stringBuffer = new StringBuffer();
            stringBuffer.append("Error in class gen setup: ");
            stringBuffer.append(paramString);
            throw new InterpreterError(stringBuffer.toString());
          } 
        } 
        bshClassManager.f(str2);
        return stringBuffer;
      } catch (UtilEvalError paramString) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("unable to init static: ");
        stringBuffer.append(paramString);
        throw new InterpreterError(stringBuffer.toString());
      } 
    } catch (Unavailable paramString) {
      throw new EvalError("Defining classes currently requires reflective Accessibility.", paramBSHBlock, paramCallStack);
    } 
  }
  
  public static Object invokeSuperclassMethodImpl(BshClassManager paramBshClassManager, Object paramObject, String paramString, Object[] paramArrayOfObject) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("_bshSuper");
    stringBuffer.append(paramString);
    String str = stringBuffer.toString();
    Class clazz = paramObject.getClass();
    Method method = Reflect.a(paramBshClassManager, clazz, str, Types.getTypes(paramArrayOfObject), false);
    return (method != null) ? Reflect.a(method, paramObject, paramArrayOfObject) : Reflect.a(Reflect.a(paramBshClassManager, clazz.getSuperclass(), paramObject, paramString, paramArrayOfObject, false), paramObject, paramArrayOfObject);
  }
  
  public Class generateClass(String paramString, Modifiers paramModifiers, Class[] paramArrayOfClass, Class paramClass, BSHBlock paramBSHBlock, boolean paramBoolean, CallStack paramCallStack, Interpreter paramInterpreter) { return generateClassImpl(paramString, paramModifiers, paramArrayOfClass, paramClass, paramBSHBlock, paramBoolean, paramCallStack, paramInterpreter); }
  
  public Object invokeSuperclassMethod(BshClassManager paramBshClassManager, Object paramObject, String paramString, Object[] paramArrayOfObject) { return invokeSuperclassMethodImpl(paramBshClassManager, paramObject, paramString, paramArrayOfObject); }
  
  public void setInstanceNameSpaceParent(Object paramObject, String paramString, NameSpace paramNameSpace) { ClassGeneratorUtil.a(paramObject, paramString).getNameSpace().setParent(paramNameSpace); }
  
  static class ClassNodeFilter implements BSHBlock.NodeFilter {
    public static ClassNodeFilter CLASSCLASSES;
    
    public static final int CLASSES = 2;
    
    public static ClassNodeFilter CLASSINSTANCE;
    
    public static ClassNodeFilter CLASSSTATIC = new ClassNodeFilter(0);
    
    public static final int INSTANCE = 1;
    
    public static final int STATIC = 0;
    
    int a;
    
    static  {
      CLASSINSTANCE = new ClassNodeFilter(1);
      CLASSCLASSES = new ClassNodeFilter(2);
    }
    
    private ClassNodeFilter(int param1Int) { this.a = param1Int; }
    
    boolean a(SimpleNode param1SimpleNode) {
      if (param1SimpleNode instanceof BSHTypedVariableDeclaration) {
        param1SimpleNode = (BSHTypedVariableDeclaration)param1SimpleNode;
        return (param1SimpleNode.modifiers != null && param1SimpleNode.modifiers.hasModifier("static"));
      } 
      if (param1SimpleNode instanceof BSHMethodDeclaration) {
        param1SimpleNode = (BSHMethodDeclaration)param1SimpleNode;
        return (param1SimpleNode.modifiers != null && param1SimpleNode.modifiers.hasModifier("static"));
      } 
      if (param1SimpleNode instanceof BSHBlock);
      return false;
    }
    
    public boolean isVisible(SimpleNode param1SimpleNode) { return (this.a == 2) ? (param1SimpleNode instanceof BSHClassDeclaration) : ((param1SimpleNode instanceof BSHClassDeclaration) ? 0 : ((this.a == 0) ? a(param1SimpleNode) : ((this.a == 1) ? (a(param1SimpleNode) ^ true) : 1))); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ClassGeneratorImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */