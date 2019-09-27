package bsh.org.objectweb.asm;

public interface ClassVisitor {
  void visit(int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3);
  
  void visitEnd();
  
  void visitField(int paramInt, String paramString1, String paramString2, Object paramObject);
  
  void visitInnerClass(String paramString1, String paramString2, String paramString3, int paramInt);
  
  CodeVisitor visitMethod(int paramInt, String paramString1, String paramString2, String[] paramArrayOfString);
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\org\objectweb\asm\ClassVisitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */