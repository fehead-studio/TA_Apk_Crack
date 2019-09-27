package com.androlua;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayListAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Arrays;

public class LuaDialog extends AlertDialog implements DialogInterface.OnClickListener {
  private Context a;
  
  private ListView b;
  
  private String c;
  
  private String d;
  
  private View e;
  
  private OnClickListener f;
  
  public LuaDialog(Context paramContext) {
    super(paramContext);
    this.a = paramContext;
    this.b = new ListView(this.a);
  }
  
  public LuaDialog(Context paramContext, int paramInt) {
    super(paramContext, paramInt);
    this.a = paramContext;
    this.b = new ListView(this.a);
  }
  
  public ListView getListView() { return this.b; }
  
  public String getMessage() { return this.c; }
  
  public String getTitle() { return this.d; }
  
  public View getView() { return this.e; }
  
  public void hide() { super.hide(); }
  
  public boolean isShowing() { return super.isShowing(); }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (this.f != null)
      this.f.onClick(this, getButton(paramInt)); 
  }
  
  public void setAdapter(ListAdapter paramListAdapter) {
    if (!this.b.equals(this.e))
      setView(this.b); 
    this.b.setAdapter(paramListAdapter);
  }
  
  public void setButton(CharSequence paramCharSequence) { setOkButton(paramCharSequence); }
  
  public void setButton1(CharSequence paramCharSequence) { setButton(-1, paramCharSequence, this); }
  
  public void setButton2(CharSequence paramCharSequence) { setButton(-2, paramCharSequence, this); }
  
  public void setButton3(CharSequence paramCharSequence) { setButton(-3, paramCharSequence, this); }
  
  public void setCancelButton(CharSequence paramCharSequence) { setButton(-2, paramCharSequence, this); }
  
  public void setIcon(Drawable paramDrawable) { super.setIcon(paramDrawable); }
  
  public void setItems(String[] paramArrayOfString) {
    ArrayList arrayList = new ArrayList(Arrays.asList(paramArrayOfString));
    setAdapter(new ArrayListAdapter(this.a, 17367043, arrayList));
    this.b.setChoiceMode(0);
  }
  
  public void setMessage(CharSequence paramCharSequence) {
    this.c = paramCharSequence.toString();
    super.setMessage(paramCharSequence);
  }
  
  public void setMultiChoiceItems(CharSequence[] paramArrayOfCharSequence) { setMultiChoiceItems(paramArrayOfCharSequence, new int[0]); }
  
  public void setMultiChoiceItems(CharSequence[] paramArrayOfCharSequence, int[] paramArrayOfInt) {
    ArrayList arrayList = new ArrayList(Arrays.asList(paramArrayOfCharSequence));
    setAdapter(new ArrayListAdapter(this.a, 17367056, arrayList));
    this.b.setChoiceMode(2);
    int i = paramArrayOfInt.length;
    for (byte b1 = 0; b1 < i; b1++) {
      int j = paramArrayOfInt[b1];
      this.b.setItemChecked(j, true);
    } 
  }
  
  public void setNegButton(CharSequence paramCharSequence) { setButton(-2, paramCharSequence, this); }
  
  public void setNegativeButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener) { setButton(-2, paramCharSequence, paramOnClickListener); }
  
  public void setNeuButton(CharSequence paramCharSequence) { setButton(-3, paramCharSequence, this); }
  
  public void setNeutralButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener) { setButton(-3, paramCharSequence, paramOnClickListener); }
  
  public void setOkButton(CharSequence paramCharSequence) { setButton(-1, paramCharSequence, this); }
  
  public void setOnCancelListener(DialogInterface.OnCancelListener paramOnCancelListener) { super.setOnCancelListener(paramOnCancelListener); }
  
  public void setOnClickListener(OnClickListener paramOnClickListener) { this.f = paramOnClickListener; }
  
  public void setOnDismissListener(DialogInterface.OnDismissListener paramOnDismissListener) { super.setOnDismissListener(paramOnDismissListener); }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener) { this.b.setOnItemClickListener(paramOnItemClickListener); }
  
  public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener paramOnItemLongClickListener) { this.b.setOnItemLongClickListener(paramOnItemLongClickListener); }
  
  public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener) { this.b.setOnItemSelectedListener(paramOnItemSelectedListener); }
  
  public void setPosButton(CharSequence paramCharSequence) { setButton(-1, paramCharSequence, this); }
  
  public void setPositiveButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener) { setButton(-1, paramCharSequence, paramOnClickListener); }
  
  public void setSingleChoiceItems(CharSequence[] paramArrayOfCharSequence) { setSingleChoiceItems(paramArrayOfCharSequence, 0); }
  
  public void setSingleChoiceItems(CharSequence[] paramArrayOfCharSequence, int paramInt) {
    ArrayList arrayList = new ArrayList(Arrays.asList(paramArrayOfCharSequence));
    setAdapter(new ArrayListAdapter(this.a, 17367055, arrayList));
    this.b.setChoiceMode(1);
    this.b.setItemChecked(paramInt, true);
  }
  
  public void setTitle(CharSequence paramCharSequence) {
    this.d = paramCharSequence.toString();
    super.setTitle(paramCharSequence);
  }
  
  public void setView(View paramView) {
    this.e = paramView;
    super.setView(paramView);
  }
  
  public void show() { super.show(); }
  
  public static interface OnClickListener {
    void onClick(LuaDialog param1LuaDialog, Button param1Button);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */