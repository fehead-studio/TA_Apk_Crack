package bsh.org.objectweb.asm;

public interface CodeVisitor {
  void visitFieldInsn(int paramInt, String paramString1, String paramString2, String paramString3);
  
  void visitIincInsn(int paramInt1, int paramInt2);
  
  void visitInsn(int paramInt);
  
  void visitIntInsn(int paramInt1, int paramInt2);
  
  void visitJumpInsn(int paramInt, Label paramLabel);
  
  void visitLabel(Label paramLabel);
  
  void visitLdcInsn(Object paramObject);
  
  void visitLineNumber(int paramInt, Label paramLabel);
  
  void visitLocalVariable(String paramString1, String paramString2, Label paramLabel1, Label paramLabel2, int paramInt);
  
  void visitLookupSwitchInsn(Label paramLabel, int[] paramArrayOfInt, Label[] paramArrayOfLabel);
  
  void visitMaxs(int paramInt1, int paramInt2);
  
  void visitMethodInsn(int paramInt, String paramString1, String paramString2, String paramString3);
  
  void visitMultiANewArrayInsn(String paramString, int paramInt);
  
  void visitTableSwitchInsn(int paramInt1, int paramInt2, Label paramLabel, Label[] paramArrayOfLabel);
  
  void visitTryCatchBlock(Label paramLabel1, Label paramLabel2, Label paramLabel3, String paramString);
  
  void visitTypeInsn(int paramInt, String paramString);
  
  void visitVarInsn(int paramInt1, int paramInt2);
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\org\objectweb\asm\CodeVisitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */