package com.nirenr;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayListAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.LinearLayout;
import com.androlua.LuaEditor;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SplitEditView extends LinearLayout implements View.OnClickListener, AdapterView.OnItemClickListener {
  private final Context a;
  
  private LinearLayout b;
  
  private GridView c;
  
  private LuaEditor d;
  
  private int e = 0;
  
  private String f = "";
  
  private String[] g = { "" };
  
  private OnSaveListener h;
  
  private LinearLayout i;
  
  public SplitEditView(Context paramContext) {
    super(paramContext);
    a(paramContext);
    this.a = paramContext;
  }
  
  private void a() {
    this.g = new String[] { this.f };
    switch (this.e) {
      default:
        setShowEdit(true);
        return;
      case 4:
        b();
        return;
      case 3:
        d();
        return;
      case 2:
        c();
        return;
      case 1:
        break;
    } 
    e();
  }
  
  private void a(Context paramContext) {
    this.b = this;
    this.b.setOrientation(1);
    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1, 1.0F);
    LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-1, -2, 1.0F);
    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
    this.c = new GridView(paramContext);
    this.d = new LuaEditor(paramContext);
    this.c.setOnItemClickListener(this);
    this.b.addView(this.c, layoutParams3);
    this.b.addView(this.d, layoutParams3);
    this.i = new LinearLayout(paramContext);
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "全文";
    arrayOfString[1] = "按段";
    arrayOfString[2] = "按行";
    arrayOfString[3] = "按句";
    arrayOfString[4] = "按字";
    arrayOfString[5] = "确定";
    for (byte b1 = 0; b1 < arrayOfString.length; b1++) {
      String str = arrayOfString[b1];
      Button button = new Button(paramContext);
      button.setText(str);
      button.setId(b1);
      button.setOnClickListener(this);
      this.i.addView(button, layoutParams1);
    } 
    this.b.addView(this.i, layoutParams2);
    this.c.setVisibility(8);
    this.d.setVisibility(0);
    setText("");
    setOnSaveListener(null);
  }
  
  private String[] a(String paramString1, String paramString2) {
    ArrayList arrayList = new ArrayList();
    Matcher matcher = Pattern.compile(paramString2).matcher(paramString1);
    int j;
    for (j = 0; matcher.find(); j = k) {
      int k = matcher.end();
      if (this.e == 1)
        k = matcher.start(); 
      arrayList.add(paramString1.substring(j, k));
      if (this.e == 1) {
        j = matcher.end();
        continue;
      } 
    } 
    if (j != paramString1.length())
      arrayList.add(paramString1.substring(j)); 
    String[] arrayOfString = new String[arrayList.size()];
    arrayList.toArray(arrayOfString);
    return arrayOfString;
  }
  
  private void b() {
    this.f = getText();
    this.e = 4;
    this.g = new String[this.f.length()];
    for (byte b1 = 0; b1 < this.f.length(); b1++)
      this.g[b1] = String.valueOf(this.f.charAt(b1)); 
    if (this.g.length == 0)
      this.g = new String[] { "" }; 
    this.c.setNumColumns(8);
    this.c.setAdapter(new ArrayListAdapter(this.a, 17367043, this.g));
  }
  
  private void c() {
    this.f = getText();
    this.e = 2;
    this.g = a(this.f, "\n");
    if (this.g.length == 0)
      this.g = new String[] { "" }; 
    this.c.setNumColumns(1);
    this.c.setAdapter(new ArrayListAdapter(this.a, 17367043, this.g));
  }
  
  private void d() {
    this.f = getText();
    this.e = 3;
    this.g = a(this.f, "\\. |[。？！，\n “”,：；;\\?!]+");
    if (this.g.length == 0)
      this.g = new String[] { "" }; 
    this.c.setNumColumns(1);
    this.c.setAdapter(new ArrayListAdapter(this.a, 17367043, this.g));
  }
  
  private void e() {
    this.f = getText();
    this.e = 1;
    this.g = a(this.f, "\\n{2,10}");
    if (this.g.length == 0)
      this.g = new String[] { "" }; 
    this.c.setNumColumns(1);
    this.c.setAdapter(new ArrayListAdapter(this.a, 17367043, this.g));
  }
  
  private void f() {
    switch (this.e) {
      default:
        return;
      case 4:
        b();
        return;
      case 3:
        d();
        return;
      case 2:
        c();
        return;
      case 1:
        break;
    } 
    e();
  }
  
  private void setShowEdit(boolean paramBoolean) {
    if (isShowEdit() == paramBoolean)
      return; 
    if (!paramBoolean) {
      this.c.setVisibility(0);
      this.d.setVisibility(8);
      this.f = this.d.getText().toString();
      this.g = new String[] { this.f };
      return;
    } 
    this.d.setText(getText());
    this.c.setVisibility(8);
    this.d.setVisibility(0);
  }
  
  public String getText() {
    if (isShowEdit())
      return this.d.getText().toString(); 
    StringBuilder stringBuilder = new StringBuilder();
    String[] arrayOfString = this.g;
    int j = arrayOfString.length;
    for (byte b1 = 0; b1 < j; b1++) {
      stringBuilder.append(arrayOfString[b1]);
      if (this.e == 1)
        stringBuilder.append("\n\n"); 
    } 
    if (this.e == 1)
      stringBuilder.delete(stringBuilder.length() - 2, stringBuilder.length()); 
    return stringBuilder.toString();
  }
  
  public boolean isShowEdit() { return (this.d.getVisibility() == 0); }
  
  public void onClick(View paramView) {
    Button button = (Button)paramView;
    switch (paramView.getId()) {
      default:
        return;
      case 5:
        if (this.h != null) {
          this.h.onSave(getText());
          return;
        } 
        return;
      case 4:
        setShowEdit(false);
        b();
        return;
      case 3:
        setShowEdit(false);
        d();
        return;
      case 2:
        setShowEdit(false);
        c();
        return;
      case 1:
        setShowEdit(false);
        e();
        return;
      case 0:
        break;
    } 
    setShowEdit(true);
    this.e = 0;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) { (new EditDialog(this, paramInt)).show(); }
  
  public void setOnSaveListener(OnSaveListener paramOnSaveListener) {
    byte b1;
    View view;
    this.h = paramOnSaveListener;
    if (paramOnSaveListener == null) {
      view = this.i.getChildAt(5);
      b1 = 8;
    } else {
      view = this.i.getChildAt(5);
      b1 = 0;
    } 
    view.setVisibility(b1);
  }
  
  public void setText(String paramString) {
    this.f = paramString;
    if (this.f == null)
      this.f = ""; 
    this.d.setText(this.f);
    a();
  }
  
  private class EditDialog implements DialogInterface.OnClickListener {
    private final int b;
    
    private final EditText c;
    
    private AlertDialog d;
    
    public EditDialog(SplitEditView this$0, int param1Int) {
      this.b = param1Int;
      this.c = new EditText(SplitEditView.a(this$0));
      this.c.setText(SplitEditView.b(this$0)[param1Int]);
      this.c.setSelection(SplitEditView.b(this$0)[param1Int].length());
    }
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) {
      SplitEditView.b(this.a)[this.b] = this.c.getText().toString();
      SplitEditView.c(this.a);
      SplitEditView.d(this.a).smoothScrollToPosition(this.b);
    }
    
    public void show() {
      this.d = (new AlertDialog.Builder(SplitEditView.a(this.a))).setTitle("输入内容").setView(this.c).setNegativeButton(17039360, null).setPositiveButton(17039370, this).setCancelable(false).create();
      Window window = this.d.getWindow();
      if (window != null) {
        window.setSoftInputMode(4);
        if (SplitEditView.a(this.a) instanceof android.app.Service) {
          char c1;
          if (Build.VERSION.SDK_INT >= 22) {
            c1 = '߰';
          } else {
            c1 = 'ߚ';
          } 
          window.setType(c1);
        } 
        this.d.show();
      } 
      this.c.setFocusable(true);
      this.c.requestFocus();
    }
  }
  
  public static interface OnSaveListener {
    void onSave(String param1String);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\nirenr\SplitEditView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */