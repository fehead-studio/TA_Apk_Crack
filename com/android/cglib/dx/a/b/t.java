package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;

public final class t extends w {
  public y a() { return y.a; }
  
  public void a(l paraml) {}
  
  public void a(l paraml, a parama) {
    int i = paraml.f().g();
    ak ak1 = paraml.o();
    ak ak2 = paraml.p();
    int j = ak1.g();
    int k = ak2.g() + ak2.c_() - j;
    String str = paraml.a().a();
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("magic: ");
      stringBuilder.append((new v(str)).f());
      parama.a(8, stringBuilder.toString());
      parama.a(4, "checksum");
      parama.a(20, "signature");
      stringBuilder = new StringBuilder();
      stringBuilder.append("file_size:       ");
      stringBuilder.append(i.a(paraml.b()));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("header_size:     ");
      stringBuilder.append(i.a(112));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("endian_tag:      ");
      stringBuilder.append(i.a(305419896));
      parama.a(4, stringBuilder.toString());
      parama.a(4, "link_size:       0");
      parama.a(4, "link_off:        0");
      stringBuilder = new StringBuilder();
      stringBuilder.append("map_off:         ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    for (byte b = 0; b < 8; b++)
      parama.b(str.charAt(b)); 
    parama.g(24);
    parama.d(paraml.b());
    parama.d(112);
    parama.d(305419896);
    parama.g(8);
    parama.d(i);
    paraml.g().b(parama);
    paraml.j().b(parama);
    paraml.k().b(parama);
    paraml.l().a(parama);
    paraml.m().a(parama);
    paraml.h().a(parama);
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("data_size:       ");
      stringBuilder.append(i.a(k));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("data_off:        ");
      stringBuilder.append(i.a(j));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(k);
    parama.d(j);
  }
  
  public int b_() { return 112; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */