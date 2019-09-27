package com.baidu.mobstat;

import android.content.Context;

class bq implements Runnable {
  bq(bm parambm, String paramString1, String paramString2, long paramLong, Context paramContext, ExtraInfo paramExtraInfo) {}
  
  public void run() {
    bv.a().d();
    StringBuilder stringBuilder = this.f.a(this.a, this.b);
    bs bs = (bs)this.f.a.get(stringBuilder);
    if (bs == null) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("EventStat: event_id[");
      stringBuilder.append(this.a);
      stringBuilder.append("] with label[");
      stringBuilder.append(this.b);
      stringBuilder.append("] is not started or alread done.");
      cz.b(stringBuilder.toString());
      return;
    } 
    if (!this.a.equals(bs.a) || !this.b.equals(bs.b)) {
      cz.a("EventStat: Wrong Case, eventId/label pair not match");
      return;
    } 
    this.f.a.remove(stringBuilder);
    long l = this.c - bs.c;
    if (l <= 0L) {
      cz.a("EventStat: Wrong Case, Duration must be positive");
      return;
    } 
    this.f.a(this.d, this.a, this.b, 1, bs.c, l, this.e);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */