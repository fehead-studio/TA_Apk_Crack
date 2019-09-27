package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.r;

public static enum y implements r {
  a(0, "header_item"),
  b(1, "string_id_item"),
  c(2, "type_id_item"),
  d(3, "proto_id_item"),
  e(4, "field_id_item"),
  f(5, "method_id_item"),
  g(6, "class_def_item"),
  h(4096, "map_list"),
  i(4097, "type_list"),
  j(4098, "annotation_set_ref_list"),
  k(4099, "annotation_set_item"),
  l(8192, "class_data_item"),
  m(8193, "code_item"),
  n(8194, "string_data_item"),
  o(8195, "debug_info_item"),
  p(8196, "annotation_item"),
  q(8197, "encoded_array_item"),
  r(8198, "annotations_directory_item"),
  s(-1, "map_item"),
  t(-1, "type_item"),
  u(-1, "exception_handler_item"),
  v(-1, "annotation_set_ref_item");
  
  private final int w;
  
  private final String x;
  
  private final String y;
  
  y(String paramString1, String paramString2) {
    this.w = paramString1;
    this.x = paramString2;
    this$enum$name = paramString2;
    if (paramString2.endsWith("_item"))
      this$enum$name = paramString2.substring(0, paramString2.length() - 5); 
    this.y = this$enum$name.replace('_', ' ');
  }
  
  public String a_() { return this.y; }
  
  public int b() { return this.w; }
  
  public String c() { return this.x; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */