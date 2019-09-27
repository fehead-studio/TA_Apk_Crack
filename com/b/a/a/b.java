package com.b.a.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;

public class b {
  protected c a;
  
  private Context b;
  
  private ActionMode c;
  
  public b(c paramc) {
    this.a = paramc;
    this.b = paramc.getContext();
  }
  
  public void a() { c(); }
  
  public void b() { d(); }
  
  public void c() {
    if (this.c == null)
      this.a.startActionMode(new ActionMode.Callback(this) {
            public boolean onActionItemClicked(ActionMode param1ActionMode, MenuItem param1MenuItem) {
              switch (param1MenuItem.getItemId()) {
                default:
                  return false;
                case 3:
                  this.a.a.paste();
                  param1ActionMode.finish();
                case 2:
                  this.a.a.copy();
                  param1ActionMode.finish();
                case 1:
                  this.a.a.cut();
                  param1ActionMode.finish();
                case 0:
                  break;
              } 
              this.a.a.selectAll();
            }
            
            public boolean onCreateActionMode(ActionMode param1ActionMode, Menu param1Menu) {
              b.a(this.a, param1ActionMode);
              param1ActionMode.setTitle(17039382);
              TypedArray typedArray = b.a(this.a).getTheme().obtainStyledAttributes(new int[] { 16843646, 16843537, 16843538, 16843539 });
              param1Menu.add(0, 0, 0, b.a(this.a).getString(17039373)).setShowAsActionFlags(2).setAlphabeticShortcut('a').setIcon(typedArray.getDrawable(0));
              param1Menu.add(0, 1, 0, b.a(this.a).getString(17039363)).setShowAsActionFlags(2).setAlphabeticShortcut('x').setIcon(typedArray.getDrawable(1));
              param1Menu.add(0, 2, 0, b.a(this.a).getString(17039361)).setShowAsActionFlags(2).setAlphabeticShortcut('c').setIcon(typedArray.getDrawable(2));
              param1Menu.add(0, 3, 0, b.a(this.a).getString(17039371)).setShowAsActionFlags(2).setAlphabeticShortcut('v').setIcon(typedArray.getDrawable(3));
              typedArray.recycle();
              return true;
            }
            
            public void onDestroyActionMode(ActionMode param1ActionMode) {
              this.a.a.selectText(false);
              b.a(this.a, null);
            }
            
            public boolean onPrepareActionMode(ActionMode param1ActionMode, Menu param1Menu) { return false; }
          }); 
  }
  
  public void d() {
    if (this.c != null) {
      this.c.finish();
      this.c = null;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */