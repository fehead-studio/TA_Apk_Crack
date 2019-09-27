package com.baidu.mobstat;

class bp implements Runnable {
  bp(bm parambm, long paramLong, String paramString1, String paramString2) {}
  
  public void run() {
    bv.a().d();
    bs bs = new bs();
    bs.c = this.a;
    bs.a = this.b;
    bs.b = this.c;
    String str = this.d.a(this.b, this.c);
    if (this.d.a.get(str) != null) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("EventStat: event_id[");
      stringBuilder1.append(this.b);
      stringBuilder1.append("] with label[");
      stringBuilder1.append(this.c);
      stringBuilder1.append("] is duplicated, older is removed");
      cz.b(stringBuilder1.toString());
    } 
    this.d.a.put(str, bs);
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("put a keyword[");
    stringBuilder.append(str);
    stringBuilder.append("] into durationlist");
    cz.a(stringBuilder.toString());
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */