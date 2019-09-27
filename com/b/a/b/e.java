package com.b.a.b;

import java.util.ArrayList;

public class e extends o {
  private boolean f = false;
  
  private a g;
  
  private ArrayList<Integer> h;
  
  public e(a parama) {
    this.g = parama;
    m();
  }
  
  private void a(int paramInt1, int paramInt2) {
    while (paramInt1 < this.h.size() && ((Integer)this.h.get(paramInt1)).intValue() <= paramInt2)
      this.h.remove(paramInt1); 
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt1;
    if (paramInt1 > 0)
      i = paramInt1 - 1; 
    paramInt1 = ((Integer)this.h.get(i)).intValue();
    a(++i, paramInt2 - paramInt3);
    b(i, paramInt3);
    b(i, paramInt1, paramInt2);
  }
  
  private void b(int paramInt1, int paramInt2) {
    while (paramInt1 < this.h.size()) {
      this.h.set(paramInt1, Integer.valueOf(((Integer)this.h.get(paramInt1)).intValue() + paramInt2));
      paramInt1++;
    } 
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3) {
    if (!this.f) {
      paramInt2 = p(paramInt2);
      int i1 = p(paramInt3);
      ArrayList arrayList1 = new ArrayList();
      while (paramInt2 < i1) {
        paramInt3 = paramInt2;
        if (paramInt2 == this.b)
          paramInt3 = this.c; 
        if (this.a[paramInt3] == '\n')
          arrayList1.add(Integer.valueOf(q(paramInt3) + 1)); 
        paramInt2 = paramInt3 + 1;
      } 
      this.h.addAll(paramInt1, arrayList1);
      return;
    } 
    if (!n()) {
      q.a("Not enough space to do word wrap");
      return;
    } 
    ArrayList arrayList = new ArrayList();
    int k = p(paramInt2);
    int n = p(paramInt3);
    int i = this.g.getRowWidth();
    int m = paramInt2;
    paramInt3 = i;
    int j = 0;
    while (k < n) {
      boolean bool;
      int i1 = k;
      if (k == this.b)
        i1 = this.c; 
      char c = this.a[i1];
      int i3 = j + this.g.getAdvance(c);
      if (c == ' ' || c == '\t' || c == '\n' || c == Character.MAX_VALUE) {
        bool = true;
      } else {
        bool = false;
      } 
      j = i3;
      k = paramInt3;
      int i2 = m;
      if (bool) {
        if (i3 <= paramInt3) {
          paramInt3 -= i3;
        } else if (i3 > i) {
          k = p(m);
          if (m != paramInt2 && (arrayList.isEmpty() || m != ((Integer)arrayList.get(arrayList.size() - 1)).intValue()))
            arrayList.add(Integer.valueOf(m)); 
          j = i;
          while (true) {
            paramInt3 = j;
            if (k <= i1) {
              paramInt3 = k;
              if (k == this.b)
                paramInt3 = this.c; 
              k = this.g.getAdvance(this.a[paramInt3]);
              if (k > j) {
                arrayList.add(Integer.valueOf(q(paramInt3)));
                j = i - k;
              } else {
                j -= k;
              } 
              k = paramInt3 + 1;
              continue;
            } 
            break;
          } 
        } else {
          arrayList.add(Integer.valueOf(m));
          paramInt3 = i - i3;
        } 
        i2 = q(i1) + 1;
        j = 0;
        k = paramInt3;
      } 
      paramInt3 = k;
      if (c == '\n') {
        arrayList.add(Integer.valueOf(i2));
        paramInt3 = i;
      } 
      k = i1 + 1;
      m = i2;
    } 
    this.h.addAll(paramInt1, arrayList);
  }
  
  private void m() {
    ArrayList arrayList = new ArrayList();
    arrayList.add(Integer.valueOf(0));
    this.h = arrayList;
  }
  
  private boolean n() { return (this.g.getRowWidth() >= this.g.getAdvance('M') * 2); }
  
  private int s(int paramInt) {
    int i;
    paramInt = p(paramInt);
    while (true) {
      i = paramInt;
      if (paramInt < this.a.length) {
        int j = paramInt;
        if (paramInt == this.b)
          j = this.c; 
        i = j;
        if (this.a[j] != '\n') {
          if (this.a[j] == Character.MAX_VALUE) {
            i = j;
            break;
          } 
          paramInt = j + 1;
          continue;
        } 
      } 
      break;
    } 
    return q(i) + 1;
  }
  
  void a(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: invokespecial a : (I)V
    //   7: iload_1
    //   8: ifeq -> 48
    //   11: iload_1
    //   12: ifle -> 25
    //   15: aload_0
    //   16: getfield b : I
    //   19: iload_1
    //   20: isub
    //   21: istore_2
    //   22: goto -> 30
    //   25: aload_0
    //   26: getfield b : I
    //   29: istore_2
    //   30: aload_0
    //   31: aload_0
    //   32: iload_2
    //   33: invokevirtual e : (I)I
    //   36: aload_0
    //   37: aload_0
    //   38: getfield b : I
    //   41: invokespecial s : (I)I
    //   44: iload_1
    //   45: invokespecial a : (III)V
    //   48: aload_0
    //   49: monitorexit
    //   50: return
    //   51: astore_3
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_3
    //   55: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	51	finally
    //   15	22	51	finally
    //   25	30	51	finally
    //   30	48	51	finally }
  
  public void a(int paramInt1, int paramInt2, long paramLong, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: iload_2
    //   5: lload_3
    //   6: iload #5
    //   8: invokespecial a : (IIJZ)V
    //   11: aload_0
    //   12: aload_0
    //   13: iload_1
    //   14: invokevirtual e : (I)I
    //   17: aload_0
    //   18: iload_1
    //   19: invokespecial s : (I)I
    //   22: iload_2
    //   23: ineg
    //   24: invokespecial a : (III)V
    //   27: aload_0
    //   28: monitorexit
    //   29: return
    //   30: astore #6
    //   32: aload_0
    //   33: monitorexit
    //   34: aload #6
    //   36: athrow
    // Exception table:
    //   from	to	target	type
    //   2	27	30	finally }
  
  public void a(CharSequence paramCharSequence) {
    int i = paramCharSequence.length();
    char[] arrayOfChar = new char[o.g(i)];
    byte b2 = 1;
    byte b1 = 0;
    while (b1 < i) {
      arrayOfChar[b1] = paramCharSequence.charAt(b1);
      byte b = b2;
      if (paramCharSequence.charAt(b1) == '\n')
        b = b2 + true; 
      b1++;
      b2 = b;
    } 
    a(arrayOfChar, i, b2);
  }
  
  public void a(boolean paramBoolean) {
    if (paramBoolean && !this.f) {
      paramBoolean = true;
    } else if (!paramBoolean && this.f) {
      paramBoolean = false;
    } else {
      return;
    } 
    this.f = paramBoolean;
    b();
  }
  
  public void a(char[] paramArrayOfChar, int paramInt, long paramLong, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: iload_2
    //   5: lload_3
    //   6: iload #5
    //   8: invokespecial a : ([CIJZ)V
    //   11: aload_0
    //   12: aload_0
    //   13: iload_2
    //   14: invokevirtual e : (I)I
    //   17: aload_0
    //   18: iload_2
    //   19: aload_1
    //   20: arraylength
    //   21: iadd
    //   22: invokespecial s : (I)I
    //   25: aload_1
    //   26: arraylength
    //   27: invokespecial a : (III)V
    //   30: aload_0
    //   31: monitorexit
    //   32: return
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: athrow
    // Exception table:
    //   from	to	target	type
    //   2	30	33	finally }
  
  public boolean a() { return this.f; }
  
  public String b(int paramInt) {
    int i = c(paramInt);
    return (i == 0) ? new String() : subSequence(((Integer)this.h.get(paramInt)).intValue(), i).toString();
  }
  
  public void b() {
    m();
    if (this.f && !n()) {
      if (this.g.getRowWidth() > 0)
        q.a("Text field has non-zero width but still too small for word wrap"); 
      return;
    } 
    b(1, 0, d());
  }
  
  public int c() { return this.h.size(); }
  
  public int c(int paramInt) {
    if (f(paramInt))
      return 0; 
    if (paramInt != this.h.size() - 1) {
      int j = ((Integer)this.h.get(paramInt + 1)).intValue();
      return j - ((Integer)this.h.get(paramInt)).intValue();
    } 
    int i = d();
    return i - ((Integer)this.h.get(paramInt)).intValue();
  }
  
  public int d(int paramInt) { return f(paramInt) ? -1 : ((Integer)this.h.get(paramInt)).intValue(); }
  
  public int e(int paramInt) {
    if (!o(paramInt))
      return -1; 
    int j = this.h.size() - 1;
    int i = 0;
    while (j >= i) {
      int k;
      int n = (i + j) / 2;
      int m = n + 1;
      if (m < this.h.size()) {
        k = ((Integer)this.h.get(m)).intValue();
      } else {
        k = d();
      } 
      if (paramInt >= ((Integer)this.h.get(n)).intValue() && paramInt < k)
        return n; 
      if (paramInt >= k) {
        i = m;
        continue;
      } 
      j = n - 1;
    } 
    return -1;
  }
  
  protected boolean f(int paramInt) { return (paramInt < 0 || paramInt >= this.h.size()); }
  
  public static interface a {
    int getAdvance(char param1Char);
    
    int getRowWidth();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */