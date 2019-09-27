package com.android.cglib.dx;

import com.android.cglib.dx.c.b.c;
import com.android.cglib.dx.c.b.f;
import com.android.cglib.dx.c.b.j;
import com.android.cglib.dx.c.b.k;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.b.p;
import com.android.cglib.dx.c.b.r;
import com.android.cglib.dx.c.b.s;
import com.android.cglib.dx.c.b.t;
import com.android.cglib.dx.c.b.u;
import com.android.cglib.dx.c.c.l;
import com.android.cglib.dx.c.d.b;
import com.android.cglib.dx.c.d.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Code {
  private final MethodId<?, ?> a;
  
  private final List<Label> b = new ArrayList();
  
  private Label c;
  
  private boolean d;
  
  private final Local<?> e;
  
  private final List<Local<?>> f = new ArrayList();
  
  private final List<Local<?>> g = new ArrayList();
  
  private s h = s.a;
  
  private final List<TypeId<?>> i = new ArrayList();
  
  private final List<Label> j = new ArrayList();
  
  private b k = b.a;
  
  Code(DexMaker.b paramb) {
    this.a = paramb.a;
    if (paramb.a()) {
      this.e = null;
    } else {
      this.e = Local.a(this, this.a.a);
      this.f.add(this.e);
    } 
    for (TypeId typeId : this.a.d.a)
      this.f.add(Local.a(this, typeId)); 
    this.c = new Label();
    a(this.c);
    this.c.c = true;
  }
  
  private <T> Local<T> a(Local<?> paramLocal, TypeId<T> paramTypeId) {
    if (!paramLocal.a.equals(paramTypeId)) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("requested ");
      stringBuilder.append(paramTypeId);
      stringBuilder.append(" but was ");
      stringBuilder.append(paramLocal.a);
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    return paramLocal;
  }
  
  private static n a(Local<?> paramLocal, Local<?>[] paramArrayOfLocal) {
    int m;
    byte b1 = 0;
    if (paramLocal != null) {
      m = 1;
    } else {
      m = 0;
    } 
    n n1 = new n(paramArrayOfLocal.length + m);
    int n = b1;
    if (paramLocal != null) {
      n1.a(0, paramLocal.b());
      n = b1;
    } 
    while (n < paramArrayOfLocal.length) {
      n1.a(n + m, paramArrayOfLocal[n].b());
      n++;
    } 
    return n1;
  }
  
  private p a(c paramc1, c paramc2) {
    if (paramc1.c() == 6) {
      int m = paramc2.c();
      if (m != 8) {
        switch (m) {
          default:
            return r.a(paramc2, paramc1);
          case 3:
            return r.bu;
          case 2:
            break;
        } 
        return r.bt;
      } 
      return r.bv;
    } 
  }
  
  private b a(List<TypeId<?>> paramList) {
    b b2 = new b(paramList.size());
    for (byte b1 = 0; b1 < paramList.size(); b1++)
      b2.a(b1, ((TypeId)paramList.get(b1)).b); 
    return b2;
  }
  
  private void a(Label paramLabel) {
    if (paramLabel.b == this)
      return; 
    if (paramLabel.b != null)
      throw new IllegalArgumentException("Cannot adopt label; it belongs to another Code"); 
    paramLabel.b = this;
    this.b.add(paramLabel);
  }
  
  private void a(Label paramLabel, List<Label> paramList) {
    Label label = new Label();
    a(label);
    this.c.e = label;
    this.c.f = paramLabel;
    this.c.d = paramList;
    this.c = label;
    this.c.c = true;
  }
  
  private void a(Local<?> paramLocal, boolean paramBoolean) {
    p p;
    if (paramBoolean) {
      p = r.d(paramLocal.a.b);
    } else {
      p = r.c(paramLocal.a.b);
    } 
    a(new k(p, this.h, paramLocal.b(), n.a));
  }
  
  private void a(f paramf) { a(paramf, null); }
  
  private void a(f paramf, Label paramLabel) {
    if (this.c == null || !this.c.c)
      throw new IllegalStateException("no current label"); 
    this.c.a.add(paramf);
    int m = paramf.d().b();
    if (m != 6) {
      switch (m) {
        default:
          throw new IllegalArgumentException();
        case 4:
          if (paramLabel == null)
            throw new IllegalArgumentException("branch == null"); 
          a(paramLabel, Collections.emptyList());
          return;
        case 3:
          if (paramLabel == null)
            throw new IllegalArgumentException("branch == null"); 
          this.c.e = paramLabel;
          this.c = null;
          return;
        case 2:
          if (paramLabel != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("unexpected branch: ");
            stringBuilder.append(paramLabel);
            throw new IllegalArgumentException(stringBuilder.toString());
          } 
          this.c = null;
          return;
        case 1:
          break;
      } 
      if (paramLabel != null) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("unexpected branch: ");
        stringBuilder.append(paramLabel);
        throw new IllegalArgumentException(stringBuilder.toString());
      } 
      return;
    } 
    if (paramLabel != null) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("unexpected branch: ");
      stringBuilder.append(paramLabel);
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    a(null, new ArrayList(this.j));
  }
  
  private <D, R> void a(p paramp, MethodId<D, R> paramMethodId, Local<? super R> paramLocal1, Local<? extends D> paramLocal2, Local<?>... paramVarArgs) {
    a(new t(paramp, this.h, a(paramLocal2, paramVarArgs), this.k, paramMethodId.f));
    if (paramLocal1 != null)
      a(paramLocal1, false); 
  }
  
  private void d() {
    Iterator iterator = this.b.iterator();
    for (byte b1 = 0; iterator.hasNext(); b1++) {
      Label label = (Label)iterator.next();
      if (label.a()) {
        iterator.remove();
        continue;
      } 
      label.b();
      label.g = b1;
    } 
  }
  
  void a() {
    if (this.d)
      throw new AssertionError(); 
    this.d = true;
    Iterator iterator1 = this.g.iterator();
    int m;
    for (m = 0; iterator1.hasNext(); m += ((Local)iterator1.next()).a(m));
    ArrayList arrayList = new ArrayList();
    Iterator iterator2 = this.f.iterator();
    int n = m;
    while (iterator2.hasNext()) {
      Local local = (Local)iterator2.next();
      l l = l.a(n - m);
      n += local.a(n);
      arrayList.add(new j(r.b(local.a.b), this.h, local.b(), n.a, l));
    } 
    ((Label)this.b.get(0)).a.addAll(0, arrayList);
  }
  
  public void addCatchClause(TypeId<? extends Throwable> paramTypeId, Label paramLabel) {
    StringBuilder stringBuilder;
    if (this.i.contains(paramTypeId)) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("Already caught: ");
      stringBuilder.append(paramTypeId);
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    a(stringBuilder);
    this.i.add(paramTypeId);
    this.k = a(this.i);
    this.j.add(stringBuilder);
  }
  
  public void aget(Local<?> paramLocal1, Local<?> paramLocal2, Local<Integer> paramLocal3) {
    a(new u(r.k(paramLocal1.a.b), this.h, n.a(paramLocal2.b(), paramLocal3.b()), this.k));
    a(paramLocal1, true);
  }
  
  public void aput(Local<?> paramLocal1, Local<Integer> paramLocal2, Local<?> paramLocal3) { a(new u(r.l(paramLocal3.a.b), this.h, n.a(paramLocal3.b(), paramLocal1.b(), paramLocal2.b()), this.k)); }
  
  public <T> void arrayLength(Local<Integer> paramLocal1, Local<T> paramLocal2) {
    a(new u(r.bC, this.h, n.a(paramLocal2.b()), this.k));
    a(paramLocal1, true);
  }
  
  int b() {
    Iterator iterator = this.f.iterator();
    int m;
    for (m = 0; iterator.hasNext(); m += ((Local)iterator.next()).a());
    return m;
  }
  
  c c() {
    if (!this.d)
      a(); 
    d();
    c c1 = new c(this.b.size());
    for (byte b1 = 0; b1 < this.b.size(); b1++)
      c1.a(b1, ((Label)this.b.get(b1)).c()); 
    return c1;
  }
  
  public void cast(Local<?> paramLocal1, Local<?> paramLocal2) {
    if ((paramLocal2.getType()).b.j()) {
      a(new t(r.ch, this.h, n.a(paramLocal2.b()), this.k, paramLocal1.a.c));
      a(paramLocal1, true);
      return;
    } 
    a(new k(a(paramLocal2.a.b, paramLocal1.a.b), this.h, paramLocal1.b(), paramLocal2.b()));
  }
  
  public <T> void compare(Comparison paramComparison, Label paramLabel, Local<T> paramLocal1, Local<T> paramLocal2) {
    a(paramLabel);
    a(new k(paramComparison.rop(b.a(paramLocal1.a.b, paramLocal2.a.b)), this.h, null, n.a(paramLocal1.b(), paramLocal2.b())), paramLabel);
  }
  
  public <T extends Number> void compareFloatingPoint(Local<Integer> paramLocal1, Local<T> paramLocal2, Local<T> paramLocal3, int paramInt) {
    p p;
    StringBuilder stringBuilder;
    if (paramInt == 1) {
      p = r.i(paramLocal2.a.b);
    } else if (paramInt == -1) {
      p = r.h(paramLocal2.a.b);
    } else {
      stringBuilder = new StringBuilder();
      stringBuilder.append("expected 1 or -1 but was ");
      stringBuilder.append(paramInt);
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    a(new k(p, this.h, stringBuilder.b(), n.a(paramLocal2.b(), paramLocal3.b())));
  }
  
  public void compareLongs(Local<Integer> paramLocal1, Local<Long> paramLocal2, Local<Long> paramLocal3) { a(new k(r.bc, this.h, paramLocal1.b(), n.a(paramLocal2.b(), paramLocal3.b()))); }
  
  public <T> Local<T> getParameter(int paramInt, TypeId<T> paramTypeId) {
    int m = paramInt;
    if (this.e != null)
      m = paramInt + 1; 
    return a((Local)this.f.get(m), paramTypeId);
  }
  
  public <T> Local<T> getThis(TypeId<T> paramTypeId) {
    if (this.e == null)
      throw new IllegalStateException("static methods cannot access 'this'"); 
    return a(this.e, paramTypeId);
  }
  
  public <D, V> void iget(FieldId<D, V> paramFieldId, Local<V> paramLocal1, Local<D> paramLocal2) {
    a(new t(r.n(paramLocal1.a.b), this.h, n.a(paramLocal2.b()), this.k, paramFieldId.e));
    a(paramLocal1, true);
  }
  
  public void instanceOfType(Local<?> paramLocal1, Local<?> paramLocal2, TypeId<?> paramTypeId) {
    a(new t(r.ci, this.h, n.a(paramLocal2.b()), this.k, paramTypeId.c));
    a(paramLocal1, true);
  }
  
  public <D, R> void invokeDirect(MethodId<D, R> paramMethodId, Local<? super R> paramLocal1, Local<? extends D> paramLocal2, Local<?>... paramVarArgs) { a(r.d(paramMethodId.b(true)), paramMethodId, paramLocal1, paramLocal2, paramVarArgs); }
  
  public <D, R> void invokeInterface(MethodId<D, R> paramMethodId, Local<? super R> paramLocal1, Local<? extends D> paramLocal2, Local<?>... paramVarArgs) { a(r.e(paramMethodId.b(true)), paramMethodId, paramLocal1, paramLocal2, paramVarArgs); }
  
  public <R> void invokeStatic(MethodId<?, R> paramMethodId, Local<? super R> paramLocal, Local<?>... paramVarArgs) { a(r.a(paramMethodId.b(true)), paramMethodId, paramLocal, null, paramVarArgs); }
  
  public <D, R> void invokeSuper(MethodId<D, R> paramMethodId, Local<? super R> paramLocal1, Local<? extends D> paramLocal2, Local<?>... paramVarArgs) { a(r.c(paramMethodId.b(true)), paramMethodId, paramLocal1, paramLocal2, paramVarArgs); }
  
  public <D, R> void invokeVirtual(MethodId<D, R> paramMethodId, Local<? super R> paramLocal1, Local<? extends D> paramLocal2, Local<?>... paramVarArgs) { a(r.b(paramMethodId.b(true)), paramMethodId, paramLocal1, paramLocal2, paramVarArgs); }
  
  public <D, V> void iput(FieldId<D, V> paramFieldId, Local<D> paramLocal1, Local<V> paramLocal2) { a(new t(r.o(paramLocal2.a.b), this.h, n.a(paramLocal2.b(), paramLocal1.b()), this.k, paramFieldId.e)); }
  
  public void jump(Label paramLabel) {
    a(paramLabel);
    a(new k(r.s, this.h, null, n.a), paramLabel);
  }
  
  public <T> void loadConstant(Local<T> paramLocal, T paramT) {
    p p;
    if (paramT == null) {
      p = r.r;
    } else {
      p = r.e(paramLocal.a.b);
    } 
    if (p.b() == 1) {
      a(new j(p, this.h, paramLocal.b(), n.a, Constants.a(paramT)));
      return;
    } 
    a(new t(p, this.h, n.a, this.k, Constants.a(paramT)));
    a(paramLocal, true);
  }
  
  public void mark(Label paramLabel) {
    a(paramLabel);
    if (paramLabel.c)
      throw new IllegalStateException("already marked"); 
    paramLabel.c = true;
    if (this.c != null)
      jump(paramLabel); 
    this.c = paramLabel;
  }
  
  public void monitorEnter(Local<?> paramLocal) { a(new u(r.bE, this.h, n.a(paramLocal.b()), this.k)); }
  
  public void monitorExit(Local<?> paramLocal) { a(new u(r.bE, this.h, n.a(paramLocal.b()), this.k)); }
  
  public <T> void move(Local<T> paramLocal1, Local<T> paramLocal2) { a(new k(r.a(paramLocal2.a.b), this.h, paramLocal1.b(), paramLocal2.b())); }
  
  public <T> void newArray(Local<T> paramLocal1, Local<Integer> paramLocal2) {
    a(new t(r.m(paramLocal1.a.b), this.h, n.a(paramLocal2.b()), this.k, paramLocal1.a.c));
    a(paramLocal1, true);
  }
  
  public <T> void newInstance(Local<T> paramLocal, MethodId<T, Void> paramMethodId, Local<?>... paramVarArgs) {
    if (paramLocal == null)
      throw new IllegalArgumentException(); 
    a(new t(r.bY, this.h, n.a, this.k, paramMethodId.a.c));
    a(paramLocal, true);
    invokeDirect(paramMethodId, null, paramLocal, paramVarArgs);
  }
  
  public <T> Local<T> newLocal(TypeId<T> paramTypeId) {
    if (this.d)
      throw new IllegalStateException("Cannot allocate locals after adding instructions"); 
    Local local = Local.a(this, paramTypeId);
    this.g.add(local);
    return local;
  }
  
  public <T1, T2> void op(BinaryOp paramBinaryOp, Local<T1> paramLocal1, Local<T1> paramLocal2, Local<T2> paramLocal3) {
    p p = paramBinaryOp.rop(b.a(paramLocal2.a.b, paramLocal3.a.b));
    n n = n.a(paramLocal2.b(), paramLocal3.b());
    if (p.b() == 1) {
      a(new k(p, this.h, paramLocal1.b(), n));
      return;
    } 
    a(new u(p, this.h, n, this.k));
    a(paramLocal1, true);
  }
  
  public <T> void op(UnaryOp paramUnaryOp, Local<T> paramLocal1, Local<T> paramLocal2) { a(new k(paramUnaryOp.rop(paramLocal2.a), this.h, paramLocal1.b(), paramLocal2.b())); }
  
  public Label removeCatchClause(TypeId<? extends Throwable> paramTypeId) {
    int m = this.i.indexOf(paramTypeId);
    if (m == -1) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("No catch clause: ");
      stringBuilder.append(paramTypeId);
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    this.i.remove(m);
    this.k = a(this.i);
    return (Label)this.j.remove(m);
  }
  
  public void returnValue(Local<?> paramLocal) {
    if (!paramLocal.a.equals(this.a.b)) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("declared ");
      stringBuilder.append(this.a.b);
      stringBuilder.append(" but returned ");
      stringBuilder.append(paramLocal.a);
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    a(new k(r.j(paramLocal.a.b), this.h, null, n.a(paramLocal.b())));
  }
  
  public void returnVoid() {
    if (!this.a.b.equals(TypeId.VOID)) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("declared ");
      stringBuilder.append(this.a.b);
      stringBuilder.append(" but returned void");
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    a(new k(r.bw, this.h, null, n.a));
  }
  
  public <V> void sget(FieldId<?, V> paramFieldId, Local<V> paramLocal) {
    a(new t(r.p(paramLocal.a.b), this.h, n.a, this.k, paramFieldId.e));
    a(paramLocal, true);
  }
  
  public <V> void sput(FieldId<?, V> paramFieldId, Local<V> paramLocal) { a(new t(r.q(paramLocal.a.b), this.h, n.a(paramLocal.b()), this.k, paramFieldId.e)); }
  
  public void throwValue(Local<? extends Throwable> paramLocal) { a(new u(r.bD, this.h, n.a(paramLocal.b()), this.k)); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\Code.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */