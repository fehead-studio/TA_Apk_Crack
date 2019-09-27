package com.android.cglib.dx.a.b;

import com.android.cglib.dx.a.a.p;
import com.android.cglib.dx.a.a.u;
import com.android.cglib.dx.c.c.s;
import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.c.d.a;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.d;
import com.android.cglib.dx.d.g;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;

public final class j {
  private final u a;
  
  private final p b;
  
  private final d c;
  
  private final l d;
  
  private final int e;
  
  private final int f;
  
  private final a g;
  
  private final boolean h;
  
  private int i = 0;
  
  private int j = 1;
  
  private a k;
  
  private PrintWriter l;
  
  private String m;
  
  private boolean n;
  
  private final p.b[] o;
  
  public j(u paramu, p paramp, l paraml, int paramInt1, int paramInt2, boolean paramBoolean, s params) {
    this.a = paramu;
    this.b = paramp;
    this.d = paraml;
    this.g = params.f();
    this.h = paramBoolean;
    this.e = paramInt1;
    this.f = paramInt2;
    this.c = new d();
    this.o = new p.b[paramInt2];
  }
  
  private int a(int paramInt) {
    int i1 = this.b.a();
    while (paramInt < i1 && this.b.a(paramInt).a() == this.i) {
      p.b b1 = this.b.a(paramInt);
      int i2 = b1.g();
      p.b b2 = this.o[i2];
      if (b1 != b2) {
        this.o[i2] = b1;
        if (b1.c()) {
          if (b2 != null && b1.b(b2)) {
            if (b2.c())
              throw new RuntimeException("shouldn't happen"); 
            b(b1);
          } else {
            c(b1);
          } 
        } else if (b1.b() != p.a.c) {
          e(b1);
        } 
      } 
      paramInt++;
    } 
    return paramInt;
  }
  
  private static int a(int paramInt1, int paramInt2) {
    if (paramInt1 < -4 || paramInt1 > 10)
      throw new RuntimeException("Parameter out of range"); 
    return paramInt1 + 4 + paramInt2 * 15 + 10;
  }
  
  private int a(int paramInt, ArrayList<u.a> paramArrayList) {
    int i1 = paramArrayList.size();
    while (paramInt < i1 && ((u.a)paramArrayList.get(paramInt)).a() == this.i) {
      a((u.a)paramArrayList.get(paramInt));
      paramInt++;
    } 
    return paramInt;
  }
  
  private String a(p.b paramb) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("v");
    stringBuilder.append(paramb.g());
    stringBuilder.append(' ');
    String str2 = paramb.d();
    if (str2 == null) {
      str2 = "null";
    } else {
      str2 = str2.a_();
    } 
    stringBuilder.append(str2);
    stringBuilder.append(' ');
    String str1 = paramb.f();
    if (str1 == null) {
      str1 = "null";
    } else {
      str1 = str1.a_();
    } 
    stringBuilder.append(str1);
    v v = paramb.e();
    if (v != null) {
      stringBuilder.append(' ');
      stringBuilder.append(v.a_());
    } 
    return stringBuilder.toString();
  }
  
  private void a(int paramInt, String paramString) {
    String str = paramString;
    if (this.m != null) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(this.m);
      stringBuilder.append(paramString);
      str = stringBuilder.toString();
    } 
    if (this.k != null) {
      a a1 = this.k;
      if (!this.n)
        paramInt = 0; 
      a1.a(paramInt, str);
    } 
    if (this.l != null)
      this.l.println(str); 
  }
  
  private void a(u.a parama) { // Byte code:
    //   0: aload_1
    //   1: invokevirtual b : ()Lcom/android/cglib/dx/c/b/s;
    //   4: invokevirtual a : ()I
    //   7: istore_3
    //   8: aload_1
    //   9: invokevirtual a : ()I
    //   12: istore_2
    //   13: iload_3
    //   14: aload_0
    //   15: getfield j : I
    //   18: isub
    //   19: istore_3
    //   20: iload_2
    //   21: aload_0
    //   22: getfield i : I
    //   25: isub
    //   26: istore #6
    //   28: iload #6
    //   30: ifge -> 43
    //   33: new java/lang/RuntimeException
    //   36: dup
    //   37: ldc 'Position entries must be in ascending address order'
    //   39: invokespecial <init> : (Ljava/lang/String;)V
    //   42: athrow
    //   43: iload_3
    //   44: bipush #-4
    //   46: if_icmplt -> 57
    //   49: iload_3
    //   50: istore_2
    //   51: iload_3
    //   52: bipush #10
    //   54: if_icmple -> 64
    //   57: aload_0
    //   58: iload_3
    //   59: invokespecial b : (I)V
    //   62: iconst_0
    //   63: istore_2
    //   64: iload_2
    //   65: iload #6
    //   67: invokestatic a : (II)I
    //   70: istore #7
    //   72: iload_2
    //   73: istore #5
    //   75: iload #7
    //   77: istore_3
    //   78: iload #6
    //   80: istore #4
    //   82: iload #7
    //   84: sipush #-256
    //   87: iand
    //   88: ifle -> 137
    //   91: aload_0
    //   92: iload #6
    //   94: invokespecial c : (I)V
    //   97: iload_2
    //   98: iconst_0
    //   99: invokestatic a : (II)I
    //   102: istore_3
    //   103: iload_3
    //   104: sipush #-256
    //   107: iand
    //   108: ifle -> 131
    //   111: aload_0
    //   112: iload_2
    //   113: invokespecial b : (I)V
    //   116: iconst_0
    //   117: iconst_0
    //   118: invokestatic a : (II)I
    //   121: istore_3
    //   122: iconst_0
    //   123: istore #4
    //   125: iconst_0
    //   126: istore #5
    //   128: goto -> 137
    //   131: iconst_0
    //   132: istore #4
    //   134: iload_2
    //   135: istore #5
    //   137: aload_0
    //   138: getfield c : Lcom/android/cglib/dx/d/d;
    //   141: iload_3
    //   142: invokevirtual b : (I)V
    //   145: aload_0
    //   146: aload_0
    //   147: getfield j : I
    //   150: iload #5
    //   152: iadd
    //   153: putfield j : I
    //   156: aload_0
    //   157: aload_0
    //   158: getfield i : I
    //   161: iload #4
    //   163: iadd
    //   164: putfield i : I
    //   167: aload_0
    //   168: getfield k : Lcom/android/cglib/dx/d/a;
    //   171: ifnonnull -> 181
    //   174: aload_0
    //   175: getfield l : Ljava/io/PrintWriter;
    //   178: ifnull -> 215
    //   181: aload_0
    //   182: iconst_1
    //   183: ldc '%04x: line %d'
    //   185: iconst_2
    //   186: anewarray java/lang/Object
    //   189: dup
    //   190: iconst_0
    //   191: aload_0
    //   192: getfield i : I
    //   195: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   198: aastore
    //   199: dup
    //   200: iconst_1
    //   201: aload_0
    //   202: getfield j : I
    //   205: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   208: aastore
    //   209: invokestatic format : (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   212: invokespecial a : (ILjava/lang/String;)V
    //   215: return }
  
  private void a(v paramv) {
    if (paramv == null || this.d == null) {
      this.c.e(0);
      return;
    } 
    this.c.e(this.d.g().b(paramv) + 1);
  }
  
  private void a(w paramw) {
    if (paramw == null || this.d == null) {
      this.c.e(0);
      return;
    } 
    this.c.e(this.d.j().b(paramw) + 1);
  }
  
  private void a(ArrayList<u.a> paramArrayList1, ArrayList<p.b> paramArrayList2) { // Byte code:
    //   0: aload_0
    //   1: getfield k : Lcom/android/cglib/dx/d/a;
    //   4: astore #10
    //   6: iconst_0
    //   7: istore #6
    //   9: aload #10
    //   11: ifnonnull -> 30
    //   14: aload_0
    //   15: getfield l : Ljava/io/PrintWriter;
    //   18: ifnull -> 24
    //   21: goto -> 30
    //   24: iconst_0
    //   25: istore #4
    //   27: goto -> 33
    //   30: iconst_1
    //   31: istore #4
    //   33: aload_0
    //   34: getfield c : Lcom/android/cglib/dx/d/d;
    //   37: invokevirtual g : ()I
    //   40: istore_3
    //   41: aload_1
    //   42: invokevirtual size : ()I
    //   45: ifle -> 66
    //   48: aload_0
    //   49: aload_1
    //   50: iconst_0
    //   51: invokevirtual get : (I)Ljava/lang/Object;
    //   54: checkcast com/android/cglib/dx/a/a/u$a
    //   57: invokevirtual b : ()Lcom/android/cglib/dx/c/b/s;
    //   60: invokevirtual a : ()I
    //   63: putfield j : I
    //   66: aload_0
    //   67: getfield c : Lcom/android/cglib/dx/d/d;
    //   70: aload_0
    //   71: getfield j : I
    //   74: invokevirtual e : (I)I
    //   77: pop
    //   78: iload #4
    //   80: ifeq -> 128
    //   83: aload_0
    //   84: getfield c : Lcom/android/cglib/dx/d/d;
    //   87: invokevirtual g : ()I
    //   90: istore #5
    //   92: new java/lang/StringBuilder
    //   95: dup
    //   96: invokespecial <init> : ()V
    //   99: astore_1
    //   100: aload_1
    //   101: ldc 'line_start: '
    //   103: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: pop
    //   107: aload_1
    //   108: aload_0
    //   109: getfield j : I
    //   112: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   115: pop
    //   116: aload_0
    //   117: iload #5
    //   119: iload_3
    //   120: isub
    //   121: aload_1
    //   122: invokevirtual toString : ()Ljava/lang/String;
    //   125: invokespecial a : (ILjava/lang/String;)V
    //   128: aload_0
    //   129: invokespecial d : ()I
    //   132: istore #5
    //   134: aload_0
    //   135: getfield g : Lcom/android/cglib/dx/c/d/a;
    //   138: invokevirtual c : ()Lcom/android/cglib/dx/c/d/b;
    //   141: astore #10
    //   143: aload #10
    //   145: invokevirtual a : ()I
    //   148: istore #7
    //   150: iload #5
    //   152: istore_3
    //   153: aload_0
    //   154: getfield h : Z
    //   157: ifne -> 209
    //   160: aload_2
    //   161: invokevirtual iterator : ()Ljava/util/Iterator;
    //   164: astore_1
    //   165: aload_1
    //   166: invokeinterface hasNext : ()Z
    //   171: ifeq -> 204
    //   174: aload_1
    //   175: invokeinterface next : ()Ljava/lang/Object;
    //   180: checkcast com/android/cglib/dx/a/a/p$b
    //   183: astore #11
    //   185: iload #5
    //   187: aload #11
    //   189: invokevirtual g : ()I
    //   192: if_icmpne -> 165
    //   195: aload_0
    //   196: getfield o : [Lcom/android/cglib/dx/a/a/p$b;
    //   199: iload #5
    //   201: aload #11
    //   203: aastore
    //   204: iload #5
    //   206: iconst_1
    //   207: iadd
    //   208: istore_3
    //   209: aload_0
    //   210: getfield c : Lcom/android/cglib/dx/d/d;
    //   213: invokevirtual g : ()I
    //   216: istore #5
    //   218: aload_0
    //   219: getfield c : Lcom/android/cglib/dx/d/d;
    //   222: iload #7
    //   224: invokevirtual e : (I)I
    //   227: pop
    //   228: iload #4
    //   230: ifeq -> 265
    //   233: aload_0
    //   234: aload_0
    //   235: getfield c : Lcom/android/cglib/dx/d/d;
    //   238: invokevirtual g : ()I
    //   241: iload #5
    //   243: isub
    //   244: ldc_w 'parameters_size: %04x'
    //   247: iconst_1
    //   248: anewarray java/lang/Object
    //   251: dup
    //   252: iconst_0
    //   253: iload #7
    //   255: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   258: aastore
    //   259: invokestatic format : (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   262: invokespecial a : (ILjava/lang/String;)V
    //   265: iload_3
    //   266: istore #5
    //   268: iconst_0
    //   269: istore_3
    //   270: iload_3
    //   271: iload #7
    //   273: if_icmpge -> 498
    //   276: aload #10
    //   278: iload_3
    //   279: invokevirtual b : (I)Lcom/android/cglib/dx/c/d/c;
    //   282: astore #11
    //   284: aload_0
    //   285: getfield c : Lcom/android/cglib/dx/d/d;
    //   288: invokevirtual g : ()I
    //   291: istore #8
    //   293: aload_2
    //   294: invokevirtual iterator : ()Ljava/util/Iterator;
    //   297: astore #12
    //   299: aload #12
    //   301: invokeinterface hasNext : ()Z
    //   306: ifeq -> 363
    //   309: aload #12
    //   311: invokeinterface next : ()Ljava/lang/Object;
    //   316: checkcast com/android/cglib/dx/a/a/p$b
    //   319: astore_1
    //   320: iload #5
    //   322: aload_1
    //   323: invokevirtual g : ()I
    //   326: if_icmpne -> 299
    //   329: aload_1
    //   330: invokevirtual e : ()Lcom/android/cglib/dx/c/c/v;
    //   333: ifnull -> 344
    //   336: aload_0
    //   337: aconst_null
    //   338: invokespecial a : (Lcom/android/cglib/dx/c/c/v;)V
    //   341: goto -> 352
    //   344: aload_0
    //   345: aload_1
    //   346: invokevirtual d : ()Lcom/android/cglib/dx/c/c/v;
    //   349: invokespecial a : (Lcom/android/cglib/dx/c/c/v;)V
    //   352: aload_0
    //   353: getfield o : [Lcom/android/cglib/dx/a/a/p$b;
    //   356: iload #5
    //   358: aload_1
    //   359: aastore
    //   360: goto -> 365
    //   363: aconst_null
    //   364: astore_1
    //   365: aload_1
    //   366: ifnonnull -> 374
    //   369: aload_0
    //   370: aconst_null
    //   371: invokespecial a : (Lcom/android/cglib/dx/c/c/v;)V
    //   374: iload #4
    //   376: ifeq -> 481
    //   379: aload_1
    //   380: ifnull -> 404
    //   383: aload_1
    //   384: invokevirtual e : ()Lcom/android/cglib/dx/c/c/v;
    //   387: ifnull -> 393
    //   390: goto -> 404
    //   393: aload_1
    //   394: invokevirtual d : ()Lcom/android/cglib/dx/c/c/v;
    //   397: invokevirtual a_ : ()Ljava/lang/String;
    //   400: astore_1
    //   401: goto -> 408
    //   404: ldc_w '<unnamed>'
    //   407: astore_1
    //   408: aload_0
    //   409: getfield c : Lcom/android/cglib/dx/d/d;
    //   412: invokevirtual g : ()I
    //   415: istore #9
    //   417: new java/lang/StringBuilder
    //   420: dup
    //   421: invokespecial <init> : ()V
    //   424: astore #12
    //   426: aload #12
    //   428: ldc_w 'parameter '
    //   431: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   434: pop
    //   435: aload #12
    //   437: aload_1
    //   438: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: pop
    //   442: aload #12
    //   444: ldc_w ' '
    //   447: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: pop
    //   451: aload #12
    //   453: ldc 'v'
    //   455: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   458: pop
    //   459: aload #12
    //   461: iload #5
    //   463: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   466: pop
    //   467: aload_0
    //   468: iload #9
    //   470: iload #8
    //   472: isub
    //   473: aload #12
    //   475: invokevirtual toString : ()Ljava/lang/String;
    //   478: invokespecial a : (ILjava/lang/String;)V
    //   481: iload #5
    //   483: aload #11
    //   485: invokevirtual g : ()I
    //   488: iadd
    //   489: istore #5
    //   491: iload_3
    //   492: iconst_1
    //   493: iadd
    //   494: istore_3
    //   495: goto -> 270
    //   498: aload_0
    //   499: getfield o : [Lcom/android/cglib/dx/a/a/p$b;
    //   502: astore_1
    //   503: aload_1
    //   504: arraylength
    //   505: istore #4
    //   507: iload #6
    //   509: istore_3
    //   510: iload_3
    //   511: iload #4
    //   513: if_icmpge -> 546
    //   516: aload_1
    //   517: iload_3
    //   518: aaload
    //   519: astore_2
    //   520: aload_2
    //   521: ifnonnull -> 527
    //   524: goto -> 539
    //   527: aload_2
    //   528: invokevirtual e : ()Lcom/android/cglib/dx/c/c/v;
    //   531: ifnull -> 539
    //   534: aload_0
    //   535: aload_2
    //   536: invokespecial d : (Lcom/android/cglib/dx/a/a/p$b;)V
    //   539: iload_3
    //   540: iconst_1
    //   541: iadd
    //   542: istore_3
    //   543: goto -> 510
    //   546: return }
  
  private void b(int paramInt) {
    int i1 = this.c.g();
    this.c.b(2);
    this.c.f(paramInt);
    this.j += paramInt;
    if (this.k != null || this.l != null)
      a(this.c.g() - i1, String.format("line = %d", new Object[] { Integer.valueOf(this.j) })); 
  }
  
  private void b(p.b paramb) {
    int i1 = this.c.g();
    this.c.b(6);
    d(paramb.g());
    if (this.k != null || this.l != null)
      a(this.c.g() - i1, String.format("%04x: +local restart %s", new Object[] { Integer.valueOf(this.i), a(paramb) })); 
  }
  
  private byte[] b() {
    ArrayList arrayList = c();
    a(arrayList, e());
    this.c.b(7);
    a a1 = this.k;
    int i2 = 0;
    if (a1 != null || this.l != null)
      a(1, String.format("%04x: prologue end", new Object[] { Integer.valueOf(this.i) })); 
    int i3 = arrayList.size();
    int i4 = this.b.a();
    for (int i1 = 0;; i1 = i6) {
      int i5 = a(i2);
      int i6 = a(i1, arrayList);
      if (i5 < i4) {
        i1 = this.b.a(i5).a();
      } else {
        i1 = Integer.MAX_VALUE;
      } 
      if (i6 < i3) {
        i2 = ((u.a)arrayList.get(i6)).a();
      } else {
        i2 = Integer.MAX_VALUE;
      } 
      int i7 = Math.min(i2, i1);
      if (i7 == Integer.MAX_VALUE || (i7 == this.e && i1 == Integer.MAX_VALUE && i2 == Integer.MAX_VALUE)) {
        f();
        return this.c.f();
      } 
      if (i7 == i2) {
        a((u.a)arrayList.get(i6));
        i1 = i6 + 1;
        i2 = i5;
        continue;
      } 
      c(i7 - this.i);
      i2 = i5;
    } 
  }
  
  private ArrayList<u.a> c() {
    int i1;
    u u1 = this.a;
    byte b1 = 0;
    if (u1 == null) {
      i1 = 0;
    } else {
      i1 = this.a.a();
    } 
    ArrayList arrayList = new ArrayList(i1);
    while (b1 < i1) {
      arrayList.add(this.a.a(b1));
      b1++;
    } 
    Collections.sort(arrayList, new Comparator<u.a>(this) {
          public int a(u.a param1a1, u.a param1a2) { return param1a1.a() - param1a2.a(); }
          
          public boolean equals(Object param1Object) { return (param1Object == this); }
        });
    return arrayList;
  }
  
  private void c(int paramInt) {
    int i1 = this.c.g();
    this.c.b(1);
    this.c.e(paramInt);
    this.i += paramInt;
    if (this.k != null || this.l != null)
      a(this.c.g() - i1, String.format("%04x: advance pc", new Object[] { Integer.valueOf(this.i) })); 
  }
  
  private void c(p.b paramb) {
    if (paramb.e() != null) {
      d(paramb);
      return;
    } 
    int i1 = this.c.g();
    this.c.b(3);
    d(paramb.g());
    a(paramb.d());
    a(paramb.f());
    if (this.k != null || this.l != null)
      a(this.c.g() - i1, String.format("%04x: +local %s", new Object[] { Integer.valueOf(this.i), a(paramb) })); 
  }
  
  private int d() { return this.f - this.g.c().b() - (this.h ^ true); }
  
  private void d(int paramInt) {
    if (paramInt < 0) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Signed value where unsigned required: ");
      stringBuilder.append(paramInt);
      throw new RuntimeException(stringBuilder.toString());
    } 
    this.c.e(paramInt);
  }
  
  private void d(p.b paramb) {
    int i1 = this.c.g();
    this.c.b(4);
    d(paramb.g());
    a(paramb.d());
    a(paramb.f());
    a(paramb.e());
    if (this.k != null || this.l != null)
      a(this.c.g() - i1, String.format("%04x: +localx %s", new Object[] { Integer.valueOf(this.i), a(paramb) })); 
  }
  
  private ArrayList<p.b> e() {
    ArrayList arrayList = new ArrayList(this.g.c().a());
    int i1 = d();
    BitSet bitSet = new BitSet(this.f - i1);
    int i2 = this.b.a();
    for (byte b1 = 0; b1 < i2; b1++) {
      p.b b2 = this.b.a(b1);
      int i3 = b2.g();
      if (i3 >= i1) {
        i3 -= i1;
        if (!bitSet.get(i3)) {
          bitSet.set(i3);
          arrayList.add(b2);
        } 
      } 
    } 
    Collections.sort(arrayList, new Comparator<p.b>(this) {
          public int a(p.b param1b1, p.b param1b2) { return param1b1.g() - param1b2.g(); }
          
          public boolean equals(Object param1Object) { return (param1Object == this); }
        });
    return arrayList;
  }
  
  private void e(p.b paramb) {
    int i1 = this.c.g();
    this.c.b(5);
    this.c.e(paramb.g());
    if (this.k != null || this.l != null)
      a(this.c.g() - i1, String.format("%04x: -local %s", new Object[] { Integer.valueOf(this.i), a(paramb) })); 
  }
  
  private void f() {
    this.c.b(0);
    if (this.k != null || this.l != null)
      a(1, "end sequence"); 
  }
  
  public byte[] a() {
    try {
      return b();
    } catch (IOException iOException) {
      throw g.a(iOException, "...while encoding debug info");
    } 
  }
  
  public byte[] a(String paramString, PrintWriter paramPrintWriter, a parama, boolean paramBoolean) {
    this.m = paramString;
    this.l = paramPrintWriter;
    this.k = parama;
    this.n = paramBoolean;
    return a();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */