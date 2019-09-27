package com.baidu.mobstat;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class cf {
  private List<cg> h = new ArrayList();
  
  public cf() {
    long l = System.currentTimeMillis();
    this.a = l;
    this.e = l;
  }
  
  public static JSONObject a(cg paramcg, long paramLong) { throw new RuntimeException("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\r\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:659)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\r\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\r\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\r\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\r\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\r\n"); }
  
  private void a(List<cg> paramList, cg paramcg) {
    if (paramList == null)
      return; 
    if (paramcg == null)
      return; 
    int i = paramList.size();
    if (i == 0) {
      paramList.add(paramcg);
      return;
    } 
    cg cg1;
    if (TextUtils.isEmpty((cg1 = (cg)paramList.get(i - 1)).b(cg1)) || TextUtils.isEmpty(cg.b(paramcg))) {
      paramList.add(paramcg);
      return;
    } 
    if (!cg.b(cg1).equals(cg.b(paramcg)) || cg.c(cg1) == cg.c(paramcg)) {
      paramList.add(paramcg);
      return;
    } 
    if (cg.c(cg1))
      cg1.a(paramcg); 
  }
  
  public void a() {
    long l = System.currentTimeMillis();
    c(l);
    this.b = 0L;
    this.c = 0L;
    this.d = 0L;
    this.e = l;
    this.f = 0;
    this.g = 0;
    this.g = 0;
    this.h.clear();
  }
  
  public void a(int paramInt) { this.g = paramInt; }
  
  public void a(long paramLong) { this.c = paramLong; }
  
  public void a(cg paramcg) { a(this.h, paramcg); }
  
  public long b() { return this.a; }
  
  public void b(int paramInt) { this.f = paramInt; }
  
  public void b(long paramLong) { this.d = paramLong; }
  
  public JSONObject c() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("s", this.a);
      jSONObject.put("e", this.b);
      jSONObject.put("i", this.e);
      jSONObject.put("c", this.f);
      jSONObject.put("s2", this.c);
      jSONObject.put("e2", this.d);
      jSONObject.put("pc", this.g);
      JSONArray jSONArray = new JSONArray();
      for (byte b1 = 0; b1 < this.h.size(); b1++)
        jSONArray.put(a((cg)this.h.get(b1), this.a)); 
      jSONObject.put("p", jSONArray);
      return jSONObject;
    } catch (JSONException jSONException) {
      cz.a("StatSession.constructJSONObject() failed");
      return jSONObject;
    } 
  }
  
  public void c(long paramLong) { this.a = paramLong; }
  
  public int d() { return this.f; }
  
  public void d(long paramLong) { this.b = paramLong; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */