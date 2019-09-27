package com.androlua;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.b.a.a.c;
import com.b.a.a.h;
import com.b.a.a.i;
import com.b.a.b.b;
import com.b.a.b.c;
import com.b.a.b.d;
import com.b.a.b.e;
import com.b.a.b.f;
import com.b.a.b.i;
import com.b.a.b.k;
import com.b.a.b.l;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

public class LuaEditor extends c {
  private l A;
  
  private int B;
  
  private String C;
  
  private boolean u;
  
  private Context v;
  
  private String w;
  
  private String x = LuaApplication.getInstance().getLuaExtDir("fonts");
  
  private String y = LuaApplication.getInstance().getLuaExtPath("android.jar");
  
  private int z;
  
  @SuppressLint({"StaticFieldLeak"})
  public LuaEditor(Context paramContext) {
    super(paramContext);
    this.v = paramContext;
    setTypeface(Typeface.MONOSPACE);
    File file = new File(this.x, "default.ttf");
    if (file.exists())
      setTypeface(Typeface.createFromFile(file)); 
    file = new File(this.x, "bold.ttf");
    if (file.exists())
      setBoldTypeface(Typeface.createFromFile(file)); 
    file = new File(this.x, "italic.ttf");
    if (file.exists())
      setItalicTypeface(Typeface.createFromFile(file)); 
    i i = paramContext.getResources().getDisplayMetrics();
    setTextSize((int)TypedValue.applyDimension(2, d, i));
    setShowLineNumbers(true);
    setHighlightCurrentRow(true);
    setWordWrap(false);
    setAutoIndentWidth(2);
    k.a(i.g());
    if (isAccessibilityEnabled()) {
      h h = new h(this);
    } else {
      i = new i(this);
    } 
    setNavigationMethod(i);
    TypedArray typedArray = this.v.getTheme().obtainStyledAttributes(new int[] { 16842801, 16842806, 16842905 });
    typedArray.getColor(0, 16711935);
    int j = typedArray.getColor(1, 16711935);
    int k = typedArray.getColor(2, 16711935);
    typedArray.recycle();
    setTextColor(j);
    setTextHighlightColor(k);
  }
  
  public void addNames(String[] paramArrayOfString) {
    i i = (i)k.a();
    String[] arrayOfString1 = i.c();
    String[] arrayOfString2 = new String[arrayOfString1.length + paramArrayOfString.length];
    System.arraycopy(arrayOfString1, 0, arrayOfString2, 0, arrayOfString1.length);
    System.arraycopy(paramArrayOfString, 0, arrayOfString2, arrayOfString1.length, paramArrayOfString.length);
    i.b(arrayOfString2);
    k.a(i);
    respan();
    invalidate();
  }
  
  public void addPackage(String paramString, String[] paramArrayOfString) {
    i i = (i)k.a();
    i.a(paramString, paramArrayOfString);
    k.a(i);
    respan();
    invalidate();
  }
  
  public boolean findNext(String paramString) {
    if (!paramString.equals(this.C)) {
      this.C = paramString;
      this.B = 0;
    } 
    this.A = new l();
    paramString = this.C;
    if (paramString.isEmpty()) {
      selectText(false);
      return false;
    } 
    this.B = this.A.a(getText(), paramString, this.B, getText().length(), false, false);
    if (this.B == -1) {
      selectText(false);
      Toast.makeText(this.v, "未找到", 0).show();
      this.B = 0;
      return false;
    } 
    setSelection(this.B, this.C.length());
    this.B += this.C.length();
    moveCaret(this.B);
    return true;
  }
  
  public String getFilePath() { return this.w; }
  
  public String getSelectedText() { return this.h.subSequence(getSelectionStart(), getSelectionEnd() - getSelectionStart()).toString(); }
  
  public f getText() { return createDocumentProvider(); }
  
  public void gotoLine() { startGotoMode(); }
  
  public void gotoLine(int paramInt) {
    int i = paramInt;
    if (paramInt > this.h.f())
      i = this.h.f(); 
    setSelection(getText().e(i - 1));
  }
  
  public void insert(int paramInt, String paramString) {
    selectText(false);
    moveCaret(paramInt);
    paste(paramString);
  }
  
  public boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent) {
    if (KeyEvent.metaStateHasNoModifiers(paramKeyEvent.getMetaState() & 0xFFFF8FFF))
      if (paramInt != 29) {
        if (paramInt != 31) {
          if (paramInt != 35) {
            if (paramInt != 40) {
              if (paramInt != 47) {
                if (paramInt != 50) {
                  if (paramInt == 52) {
                    cut();
                    return true;
                  } 
                } else {
                  paste();
                  return true;
                } 
              } else {
                search();
                return true;
              } 
            } else {
              format();
              return true;
            } 
          } else {
            gotoLine();
            return true;
          } 
        } else {
          copy();
          return true;
        } 
      } else {
        selectAll();
        return true;
      }  
    return super.onKeyShortcut(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.z != 0 && paramInt3 > 0) {
      moveCaret(this.z);
      this.z = 0;
    } 
  }
  
  public void open(String paramString) {
    this.w = paramString;
    BufferedReader bufferedReader = new BufferedReader(new FileReader(paramString));
    StringBuilder stringBuilder = new StringBuilder();
    while (true) {
      String str = bufferedReader.readLine();
      if (str != null) {
        stringBuilder.append(str);
        stringBuilder.append("\n");
        continue;
      } 
      break;
    } 
    if (stringBuilder.length() > 1)
      stringBuilder.setLength(stringBuilder.length() - 1); 
    setText(stringBuilder);
  }
  
  public void redo() {
    int i = createDocumentProvider().m();
    if (i >= 0) {
      setEdited(true);
      respan();
      selectText(false);
      moveCaret(i);
      invalidate();
    } 
  }
  
  public void removePackage(String paramString) {
    i i = (i)k.a();
    i.b(paramString);
    k.a(i);
    respan();
    invalidate();
  }
  
  public boolean save() { return save(this.w); }
  
  public boolean save(String paramString) {
    if (paramString == null)
      return true; 
    File file = new File(paramString);
    if (file.exists() && !file.canWrite())
      return false; 
    BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(paramString));
    bufferedWriter.write(getText().toString());
    bufferedWriter.close();
    return true;
  }
  
  public void search() { startFindMode(); }
  
  public void setBackgoudColor(int paramInt) { getColorScheme().a(b.a.b, paramInt); }
  
  public void setBasewordColor(int paramInt) { getColorScheme().a(b.a.l, paramInt); }
  
  public void setCommentColor(int paramInt) { getColorScheme().a(b.a.j, paramInt); }
  
  public void setDark(boolean paramBoolean) {
    d d;
    if (paramBoolean) {
      d = new c();
    } else {
      d = new d();
    } 
    setColorScheme(d);
  }
  
  public void setKeywordColor(int paramInt) { getColorScheme().a(b.a.k, paramInt); }
  
  public void setPanelBackgroundColor(int paramInt) { this.s.b(paramInt); }
  
  public void setPanelTextColor(int paramInt) { this.s.a(paramInt); }
  
  public void setSelection(int paramInt) {
    selectText(false);
    if (!hasLayout()) {
      moveCaret(paramInt);
      return;
    } 
    this.z = paramInt;
  }
  
  public void setStringColor(int paramInt) { getColorScheme().a(b.a.n, paramInt); }
  
  public void setText(CharSequence paramCharSequence) {
    e e = new e(this);
    e.a(this.u);
    e.a(paramCharSequence);
    setDocumentProvider(new f(e));
  }
  
  public void setText(CharSequence paramCharSequence, boolean paramBoolean) { replaceText(0, getLength() - 1, paramCharSequence.toString()); }
  
  public void setTextColor(int paramInt) { getColorScheme().a(b.a.a, paramInt); }
  
  public void setTextHighlightColor(int paramInt) { getColorScheme().a(b.a.d, paramInt); }
  
  public void setUserwordColor(int paramInt) { getColorScheme().a(b.a.m, paramInt); }
  
  public void setWordWrap(boolean paramBoolean) {
    this.u = paramBoolean;
    super.setWordWrap(paramBoolean);
  }
  
  public void startFindMode() { startActionMode(new ActionMode.Callback(this) {
          private l b;
          
          private int c;
          
          private EditText d;
          
          private void a() {
            this.b = new l();
            String str = this.d.getText().toString();
            if (str.isEmpty()) {
              this.a.selectText(false);
              return;
            } 
            this.c = this.b.a(this.a.getText(), str, this.c, this.a.getText().length(), false, false);
            if (this.c == -1) {
              this.a.selectText(false);
              Toast.makeText(LuaEditor.a(this.a), "未找到", 0).show();
              this.c = 0;
              return;
            } 
            this.a.setSelection(this.c, this.d.getText().length());
            this.c += this.d.getText().length();
            this.a.moveCaret(this.c);
          }
          
          public boolean onActionItemClicked(ActionMode param1ActionMode, MenuItem param1MenuItem) {
            switch (param1MenuItem.getItemId()) {
              case 2:
                a();
                break;
            } 
            return false;
          }
          
          public boolean onCreateActionMode(ActionMode param1ActionMode, Menu param1Menu) {
            param1ActionMode.setTitle("搜索");
            param1ActionMode.setSubtitle(null);
            this.d = new EditText(this, LuaEditor.a(this.a)) {
                public void onTextChanged(CharSequence param2CharSequence, int param2Int1, int param2Int2, int param2Int3) {
                  if (param2CharSequence.length() > 0) {
                    LuaEditor.null.a(this.a, 0);
                    LuaEditor.null.a(this.a);
                  } 
                }
              };
            this.d.setSingleLine(true);
            this.d.setImeOptions(3);
            this.d.setOnEditorActionListener(new TextView.OnEditorActionListener(this) {
                  public boolean onEditorAction(TextView param2TextView, int param2Int, KeyEvent param2KeyEvent) {
                    LuaEditor.null.a(this.a);
                    return true;
                  }
                });
            this.d.setLayoutParams(new RadioGroup.LayoutParams(this.a.getWidth() / 3, -1));
            param1Menu.add(0, 1, 0, "").setActionView(this.d);
            param1Menu.add(0, 2, 0, LuaEditor.a(this.a).getString(17039372));
            this.d.requestFocus();
            return true;
          }
          
          public void onDestroyActionMode(ActionMode param1ActionMode) {}
          
          public boolean onPrepareActionMode(ActionMode param1ActionMode, Menu param1Menu) { return false; }
        }); }
  
  public void startGotoMode() { startActionMode(new ActionMode.Callback(this) {
          private int b;
          
          private EditText c;
          
          private void a() {
            String str = this.c.getText().toString();
            if (str.isEmpty())
              return; 
            int j = Integer.valueOf(str).intValue();
            int i = j;
            if (j > LuaEditor.b(this.a).f())
              i = LuaEditor.c(this.a).f(); 
            this.a.gotoLine(i);
          }
          
          public boolean onActionItemClicked(ActionMode param1ActionMode, MenuItem param1MenuItem) {
            switch (param1MenuItem.getItemId()) {
              case 2:
                a();
                break;
            } 
            return false;
          }
          
          public boolean onCreateActionMode(ActionMode param1ActionMode, Menu param1Menu) {
            param1ActionMode.setTitle("转到");
            param1ActionMode.setSubtitle(null);
            this.c = new EditText(this, LuaEditor.a(this.a)) {
                public void onTextChanged(CharSequence param2CharSequence, int param2Int1, int param2Int2, int param2Int3) {
                  if (param2CharSequence.length() > 0) {
                    LuaEditor.null.a(this.a, 0);
                    LuaEditor.null.a(this.a);
                  } 
                }
              };
            this.c.setSingleLine(true);
            this.c.setInputType(2);
            this.c.setImeOptions(2);
            this.c.setOnEditorActionListener(new TextView.OnEditorActionListener(this) {
                  public boolean onEditorAction(TextView param2TextView, int param2Int, KeyEvent param2KeyEvent) {
                    LuaEditor.null.a(this.a);
                    return true;
                  }
                });
            this.c.setLayoutParams(new RadioGroup.LayoutParams(this.a.getWidth() / 3, -1));
            param1Menu.add(0, 1, 0, "").setActionView(this.c);
            param1Menu.add(0, 2, 0, LuaEditor.a(this.a).getString(17039370));
            this.c.requestFocus();
            return true;
          }
          
          public void onDestroyActionMode(ActionMode param1ActionMode) {}
          
          public boolean onPrepareActionMode(ActionMode param1ActionMode, Menu param1Menu) { return false; }
        }); }
  
  public void undo() {
    int i = createDocumentProvider().l();
    if (i >= 0) {
      setEdited(true);
      respan();
      selectText(false);
      moveCaret(i);
      invalidate();
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaEditor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */