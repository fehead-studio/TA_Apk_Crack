package bsh;

import java.util.Vector;

public class CallStack {
  private Vector a = new Vector(2);
  
  public CallStack() {}
  
  public CallStack(NameSpace paramNameSpace) { push(paramNameSpace); }
  
  public void clear() { this.a.removeAllElements(); }
  
  public CallStack copy() {
    CallStack callStack = new CallStack();
    callStack.a = (Vector)this.a.clone();
    return callStack;
  }
  
  public int depth() { return this.a.size(); }
  
  public NameSpace get(int paramInt) { return (paramInt >= depth()) ? NameSpace.JAVACODE : (NameSpace)this.a.elementAt(paramInt); }
  
  public NameSpace pop() {
    if (depth() < 1)
      throw new InterpreterError("pop on empty CallStack"); 
    NameSpace nameSpace = top();
    this.a.removeElementAt(0);
    return nameSpace;
  }
  
  public void push(NameSpace paramNameSpace) { this.a.insertElementAt(paramNameSpace, 0); }
  
  public void set(int paramInt, NameSpace paramNameSpace) { this.a.setElementAt(paramNameSpace, paramInt); }
  
  public NameSpace swap(NameSpace paramNameSpace) {
    NameSpace nameSpace = (NameSpace)this.a.elementAt(0);
    this.a.setElementAt(paramNameSpace, 0);
    return nameSpace;
  }
  
  public NameSpace[] toArray() {
    NameSpace[] arrayOfNameSpace = new NameSpace[depth()];
    this.a.copyInto(arrayOfNameSpace);
    return arrayOfNameSpace;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("CallStack:\n");
    NameSpace[] arrayOfNameSpace = toArray();
    for (byte b = 0;; b++) {
      if (b >= arrayOfNameSpace.length)
        return stringBuffer.toString(); 
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("\t");
      stringBuffer1.append(arrayOfNameSpace[b]);
      stringBuffer1.append("\n");
      stringBuffer.append(stringBuffer1.toString());
    } 
  }
  
  public NameSpace top() { return get(0); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\CallStack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */