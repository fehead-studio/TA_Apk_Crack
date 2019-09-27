package com.androlua;

import android.graphics.Bitmap;
import com.a.a.a.a.a.a.a;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.InputStream;

public class GifDecoder extends Thread {
  public static final int STATUS_FINISH = -1;
  
  public static final int STATUS_FORMAT_ERROR = 1;
  
  public static final int STATUS_OPEN_ERROR = 2;
  
  public static final int STATUS_PARSING = 0;
  
  private boolean A = false;
  
  private byte[] B = new byte[256];
  
  private int C = 0;
  
  private int D = 0;
  
  private int E = 0;
  
  private boolean F = false;
  
  private int G = 0;
  
  private int H;
  
  private short[] I;
  
  private byte[] J;
  
  private byte[] K;
  
  private byte[] L;
  
  private GifFrame M;
  
  private int N;
  
  private GifAction O = null;
  
  private byte[] P = null;
  
  private InputStream a;
  
  private int b;
  
  private boolean c;
  
  private int d;
  
  private int e = 1;
  
  private int[] f;
  
  private int[] g;
  
  private int[] h;
  
  public int height;
  
  private int i;
  
  private int j;
  
  private int k;
  
  private int l;
  
  private boolean m;
  
  private boolean n;
  
  private int o;
  
  private int p;
  
  private int q;
  
  private int r;
  
  private int s;
  
  private int t;
  
  private int u;
  
  private int v;
  
  private int w;
  
  public int width;
  
  private Bitmap x;
  
  private Bitmap y;
  
  private GifFrame z = null;
  
  public GifDecoder(InputStream paramInputStream, GifAction paramGifAction) {
    this.a = paramInputStream;
    this.O = paramGifAction;
  }
  
  public GifDecoder(String paramString, GifAction paramGifAction) {
    this.a = new FileInputStream(paramString);
    this.O = paramGifAction;
  }
  
  public GifDecoder(byte[] paramArrayOfByte, GifAction paramGifAction) {
    this.P = paramArrayOfByte;
    this.O = paramGifAction;
  }
  
  private void a() {
    int[] arrayOfInt = new int[this.width * this.height];
    int i1 = this.E;
    int i3 = 0;
    if (i1 > 0) {
      if (this.E == 3) {
        Object object;
        i1 = this.N - 2;
        if (i1 > 0) {
          object = getFrameImage(i1 - 1);
        } else {
          object = null;
        } 
        this.y = object;
      } 
      if (this.y != null) {
        this.y.getPixels(arrayOfInt, 0, this.width, 0, 0, this.width, this.height);
        if (this.E == 2) {
          boolean bool;
          if (!this.F) {
            bool = this.k;
          } else {
            bool = false;
          } 
          for (int i5 = 0; i5 < this.w; i5++) {
            int i6 = (this.u + i5) * this.width + this.t;
            int i7 = this.v;
            for (i1 = i6; i1 < i7 + i6; i1++)
              arrayOfInt[i1] = bool; 
          } 
        } 
      } 
    } 
    int i2 = 0;
    byte b1 = 1;
    int i4;
    for (i4 = 8; i3 < this.s; i4 = i5) {
      int i5;
      if (this.n) {
        i1 = i2;
        byte b2 = b1;
        i5 = i4;
        if (i2 >= this.s) {
          b2 = b1 + true;
          switch (b2) {
            default:
              i1 = i2;
              i5 = i4;
              break;
            case true:
              i1 = 1;
              i5 = 2;
              break;
            case true:
              i1 = 2;
              i5 = 4;
              break;
            case true:
              i1 = 4;
              i5 = i4;
              break;
          } 
        } 
        i4 = i1 + i5;
        i2 = i1;
        b1 = b2;
        i1 = i4;
      } else {
        i1 = i2;
        i2 = i3;
        i5 = i4;
      } 
      i2 += this.q;
      if (i2 < this.height) {
        int i7 = i2 * this.width;
        int i6 = this.p + i7;
        i4 = this.r + i6;
        i2 = i4;
        if (this.width + i7 < i4)
          i2 = this.width + i7; 
        for (i4 = this.r * i3; i6 < i2; i4++) {
          i7 = this.L[i4];
          i7 = this.h[i7 & 0xFF];
          if (i7 != 0)
            arrayOfInt[i6] = i7; 
          i6++;
        } 
      } 
      i3++;
      i2 = i1;
    } 
    this.x = Bitmap.createBitmap(arrayOfInt, this.width, this.height, Bitmap.Config.ARGB_4444);
  }
  
  private int[] a(int paramInt) {
    int i1 = paramInt * 3;
    byte[] arrayOfByte = new byte[i1];
    int i2 = 0;
    try {
      b1 = this.a.read(arrayOfByte);
    } catch (Exception exception) {
      a.a(exception);
      b1 = 0;
    } 
    if (b1 < i1) {
      this.b = 1;
      return null;
    } 
    int[] arrayOfInt = new int[256];
    i1 = 0;
    for (byte b1 = i2; b1 < paramInt; b1++) {
      i2 = i1 + 1;
      i1 = arrayOfByte[i1];
      int i3 = i2 + 1;
      arrayOfInt[b1] = (i1 & 0xFF) << 16 | 0xFF000000 | (arrayOfByte[i2] & 0xFF) << 8 | arrayOfByte[i3] & 0xFF;
      i1 = i3 + 1;
    } 
    return arrayOfInt;
  }
  
  private int b() {
    this.a = new ByteArrayInputStream(this.P);
    this.P = null;
    return c();
  }
  
  private int c() {
    f();
    if (this.a != null) {
      k();
      if (!e()) {
        i();
        if (this.N < 0) {
          this.b = 1;
        } else {
          this.b = -1;
          this.O.parseOk(true, -1);
          try {
            this.a.close();
          } catch (Exception exception) {
            a.a(exception);
          } 
        } 
      } 
      this.O.parseOk(false, -1);
    } else {
      this.b = 2;
      this.O.parseOk(false, -1);
      return this.b;
    } 
    try {
      this.a.close();
    } catch (Exception exception) {
      a.a(exception);
    } 
  }
  
  private void d() {
    int i15 = this.r * this.s;
    if (this.L == null || this.L.length < i15)
      this.L = new byte[i15]; 
    if (this.I == null)
      this.I = new short[4096]; 
    if (this.J == null)
      this.J = new byte[4096]; 
    if (this.K == null)
      this.K = new byte[4097]; 
    int i1 = g();
    int i14 = 1 << i1;
    int i12 = i14 + 2;
    int i13 = (1 << ++i1) - 1;
    int i2;
    for (i2 = 0; i2 < i14; i2++) {
      this.I[i2] = 0;
      this.J[i2] = (byte)i2;
    } 
    int i3 = i1;
    int i10 = i12;
    i2 = i13;
    int i4 = -1;
    byte b3 = 0;
    int i5 = 0;
    int i7 = 0;
    int i9 = 0;
    int i8 = 0;
    byte b2 = 0;
    int i11 = 0;
    byte b1 = 0;
    int i6 = i14;
    while (b3 < i15) {
      int i16;
      if (!i5) {
        if (i7 < i3) {
          int i19 = i9;
          if (!i9) {
            i19 = h();
            if (i19 <= 0)
              break; 
            b2 = 0;
          } 
          i8 += ((this.B[b2] & 0xFF) << i7);
          i7 += 8;
          b2++;
          i9 = i19 - 1;
          continue;
        } 
        i16 = i8 & i2;
        i8 >>= i3;
        int i17 = i7 - i3;
        if (i16 > i10 || i16 == i14 + 1)
          break; 
        if (i16 == i6) {
          i3 = i1;
          i10 = i12;
          i2 = i13;
          i4 = -1;
          i7 = i17;
          continue;
        } 
        if (i4 == -1) {
          this.K[i5] = this.J[i16];
          i4 = i16;
          i11 = i4;
          i5++;
          i7 = i17;
          continue;
        } 
        if (i16 == i10) {
          byte[] arrayOfByte1 = this.K;
          byte b5 = i5 + 1;
          arrayOfByte1[i5] = (byte)i11;
          i7 = i4;
          i5 = b5;
        } else {
          i7 = i16;
        } 
        while (i7 > i6) {
          this.K[i5] = this.J[i7];
          i7 = this.I[i7];
          i5++;
        } 
        int i18 = i6;
        i11 = this.J[i7] & 0xFF;
        if (i10 >= 4096)
          break; 
        byte[] arrayOfByte = this.K;
        i7 = i5 + 1;
        byte b4 = (byte)i11;
        arrayOfByte[i5] = b4;
        this.I[i10] = (short)i4;
        this.J[i10] = b4;
        if ((++i10 & i2) == 0) {
          i6 = i3;
          i5 = i2;
          if (i10 < 4096) {
            i6 = i3 + 1;
            i5 = i2 + i10;
          } 
        } else {
          i5 = i2;
          i6 = i3;
        } 
        i4 = i16;
        i16 = i7;
        i7 = i17;
        i3 = i6;
        i2 = i5;
        i6 = i18;
      } else {
        i16 = i5;
      } 
      i5 = i16 - 1;
      this.L[b1] = this.K[i5];
      b3++;
      b1++;
    } 
    while (b1 < i15) {
      this.L[b1] = 0;
      b1++;
    } 
  }
  
  private boolean e() { return (this.b != 0); }
  
  private void f() {
    this.b = 0;
    this.N = 0;
    this.M = null;
    this.f = null;
    this.g = null;
  }
  
  private int g() {
    try {
      return this.a.read();
    } catch (Exception exception) {
      this.b = 1;
      return 0;
    } 
  }
  
  private int h() {
    this.C = g();
    int i3 = this.C;
    int i2 = 0;
    int i1 = 0;
    if (i3 > 0) {
      try {
        while (i1 < this.C) {
          i2 = this.a.read(this.B, i1, this.C - i1);
          if (i2 == -1)
            break; 
          i1 += i2;
        } 
      } catch (Exception exception) {
        a.a(exception);
      } 
      i2 = i1;
      if (i1 < this.C) {
        this.b = 1;
        i2 = i1;
      } 
    } 
    return i2;
  }
  
  private void i() {
    boolean bool = false;
    while (!bool && !e()) {
      int i1 = g();
      if (i1 != 0) {
        if (i1 != 33) {
          if (i1 != 44) {
            if (i1 != 59) {
              this.b = 1;
              continue;
            } 
            bool = true;
            continue;
          } 
          l();
          continue;
        } 
        i1 = g();
        if (i1 != 249) {
          if (i1 == 255) {
            h();
            String str = "";
            for (i1 = 0; i1 < 11; i1++) {
              StringBuilder stringBuilder = new StringBuilder();
              stringBuilder.append(str);
              stringBuilder.append((char)this.B[i1]);
              str = stringBuilder.toString();
            } 
            if (str.equals("NETSCAPE2.0")) {
              n();
              continue;
            } 
          } 
          q();
          continue;
        } 
        j();
      } 
    } 
  }
  
  private void j() {
    g();
    int i1 = g();
    this.D = (i1 & 0x1C) >> 2;
    int i2 = this.D;
    boolean bool = true;
    if (i2 == 0)
      this.D = 1; 
    if ((i1 & true) == 0)
      bool = false; 
    this.F = bool;
    this.G = o() * 10;
    this.H = g();
    g();
  }
  
  private void k() {
    String str = "";
    for (byte b1 = 0; b1 < 6; b1++) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str);
      stringBuilder.append((char)g());
      str = stringBuilder.toString();
    } 
    if (!str.startsWith("GIF")) {
      this.b = 1;
      return;
    } 
    m();
    if (this.c && !e()) {
      this.f = a(this.d);
      this.j = this.f[this.i];
    } 
  }
  
  private void l() {
    boolean bool;
    this.p = o();
    this.q = o();
    this.r = o();
    this.s = o();
    int i1 = g();
    if ((i1 & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.m = bool;
    if ((i1 & 0x40) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.n = bool;
    this.o = 2 << (i1 & 0x7);
    if (this.m) {
      this.g = a(this.o);
      this.h = this.g;
    } else {
      this.h = this.f;
      if (this.i == this.H)
        this.j = 0; 
    } 
    if (this.F) {
      i1 = this.h[this.H];
      this.h[this.H] = 0;
    } else {
      i1 = 0;
    } 
    if (this.h == null)
      this.b = 1; 
    if (e())
      return; 
    d();
    q();
    if (e())
      return; 
    this.N++;
    this.x = Bitmap.createBitmap(this.width, this.height, Bitmap.Config.ARGB_4444);
    a();
    if (this.M == null) {
      this.M = new GifFrame(this.x, this.G);
      this.z = this.M;
    } else {
      GifFrame gifFrame;
      for (gifFrame = this.M; gifFrame.nextFrame != null; gifFrame = gifFrame.nextFrame);
      gifFrame.nextFrame = new GifFrame(this.x, this.G);
    } 
    if (this.F)
      this.h[this.H] = i1; 
    p();
    this.O.parseOk(true, this.N);
  }
  
  private void m() {
    boolean bool;
    this.width = o();
    this.height = o();
    int i1 = g();
    if ((i1 & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.c = bool;
    this.d = 2 << (i1 & 0x7);
    this.i = g();
    this.l = g();
  }
  
  private void n() {
    do {
      h();
      if (this.B[0] != 1)
        continue; 
      this.e = this.B[1] & 0xFF | (this.B[2] & 0xFF) << 8;
    } while (this.C > 0 && !e());
  }
  
  private int o() { return g() | g() << 8; }
  
  private void p() {
    this.E = this.D;
    this.t = this.p;
    this.u = this.q;
    this.v = this.r;
    this.w = this.s;
    this.y = this.x;
    this.k = this.j;
    this.D = 0;
    this.F = false;
    this.G = 0;
    this.g = null;
  }
  
  private void q() {
    do {
      h();
    } while (this.C > 0 && !e());
  }
  
  public void free() {
    while (true) {
      GifFrame gifFrame = this.M;
      if (gifFrame != null) {
        gifFrame.image = null;
        this.M = this.M.nextFrame;
        continue;
      } 
      break;
    } 
    if (this.a != null) {
      try {
        this.a.close();
      } catch (Exception exception) {}
      this.a = null;
    } 
    this.P = null;
  }
  
  public GifFrame getCurrentFrame() { return this.z; }
  
  public int getDelay(int paramInt) {
    this.G = -1;
    if (paramInt >= 0 && paramInt < this.N) {
      GifFrame gifFrame = getFrame(paramInt);
      if (gifFrame != null)
        this.G = gifFrame.delay; 
    } 
    return this.G;
  }
  
  public int[] getDelays() {
    GifFrame gifFrame = this.M;
    int[] arrayOfInt = new int[this.N];
    for (byte b1 = 0; gifFrame != null && b1 < this.N; b1++) {
      arrayOfInt[b1] = gifFrame.delay;
      gifFrame = gifFrame.nextFrame;
    } 
    return arrayOfInt;
  }
  
  public GifFrame getFrame(int paramInt) {
    GifFrame gifFrame = this.M;
    for (byte b1 = 0; gifFrame != null; b1++) {
      if (b1 == paramInt)
        return gifFrame; 
      gifFrame = gifFrame.nextFrame;
    } 
    return null;
  }
  
  public int getFrameCount() { return this.N; }
  
  public Bitmap getFrameImage(int paramInt) {
    GifFrame gifFrame = getFrame(paramInt);
    return (gifFrame == null) ? null : gifFrame.image;
  }
  
  public Bitmap getImage() { return getFrameImage(0); }
  
  public int getLoopCount() { return this.e; }
  
  public int getStatus() { return this.b; }
  
  public GifFrame next() {
    GifFrame gifFrame;
    if (!this.A) {
      this.A = true;
      return this.M;
    } 
    if (this.b == 0) {
      if (this.z.nextFrame != null) {
        gifFrame = this.z.nextFrame;
      } else {
        return this.z;
      } 
    } else {
      this.z = this.z.nextFrame;
      if (this.z == null) {
        gifFrame = this.M;
      } else {
        return this.z;
      } 
    } 
    this.z = gifFrame;
    return this.z;
  }
  
  public boolean parseOk() { return (this.b == -1); }
  
  public void reset() { this.z = this.M; }
  
  public void run() {
    if (this.a != null) {
      c();
      return;
    } 
    if (this.P != null)
      b(); 
  }
  
  public static interface GifAction {
    void parseOk(boolean param1Boolean, int param1Int);
  }
  
  public static class GifFrame {
    public int delay;
    
    public Bitmap image;
    
    public GifFrame nextFrame = null;
    
    public GifFrame(Bitmap param1Bitmap, int param1Int) {
      this.image = param1Bitmap;
      this.delay = param1Int;
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\GifDecoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */