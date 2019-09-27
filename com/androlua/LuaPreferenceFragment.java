package com.androlua;

import android.os.Build;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import com.a.a.a.a.a.a.a;
import com.luajava.LuaException;
import com.luajava.LuaJavaAPI;
import com.luajava.LuaObject;
import com.luajava.LuaState;
import com.luajava.LuaTable;

public class LuaPreferenceFragment extends PreferenceFragment implements Preference.OnPreferenceChangeListener, Preference.OnPreferenceClickListener {
  private LuaTable<Integer, LuaTable> a;
  
  private Preference.OnPreferenceChangeListener b;
  
  private Preference.OnPreferenceClickListener c;
  
  private void a(LuaTable<Integer, LuaTable> paramLuaTable) {
    PreferenceScreen preferenceScreen = getPreferenceScreen();
    int i = paramLuaTable.length();
    LuaState luaState = paramLuaTable.getLuaState();
    for (byte b1 = 1; b1 <= i; b1++) {
      LuaTable luaTable = (LuaTable)paramLuaTable.get(Integer.valueOf(b1));
      try {
        LuaObject luaObject = luaTable.getI(1L);
        if (luaObject.isNil())
          throw new IllegalArgumentException("Fist value Must be a Class<Preference>, checked import package."); 
        Preference preference = (Preference)luaObject.call(new Object[] { getActivity() });
        for (LuaTable.LuaEntry luaEntry : luaTable.entrySet()) {
          Object object = luaEntry.getKey();
          boolean bool = object instanceof String;
          if (bool)
            try {
              LuaJavaAPI.javaSetter(luaState, preference, (String)object, luaEntry.getValue());
            } catch (LuaException luaEntry) {
              a.a(luaEntry);
            }  
        } 
        preference.setOnPreferenceChangeListener(this);
        preference.setOnPreferenceClickListener(this);
        preferenceScreen.addPreference(preference);
      } catch (Exception exception) {
        luaState.getContext().sendError("LuaPreferenceFragment", exception);
      } 
    } 
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (Build.VERSION.SDK_INT >= 24)
      getPreferenceManager().setStorageDeviceProtected(); 
    setPreferenceScreen(getPreferenceManager().createPreferenceScreen(getActivity()));
    a(this.a);
  }
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject) { return (this.b != null) ? this.b.onPreferenceChange(paramPreference, paramObject) : 1; }
  
  public boolean onPreferenceClick(Preference paramPreference) { return (this.c != null) ? this.c.onPreferenceClick(paramPreference) : 0; }
  
  public void setOnPreferenceChangeListener(Preference.OnPreferenceChangeListener paramOnPreferenceChangeListener) { this.b = paramOnPreferenceChangeListener; }
  
  public void setOnPreferenceClickListener(Preference.OnPreferenceClickListener paramOnPreferenceClickListener) { this.c = paramOnPreferenceClickListener; }
  
  public void setPreference(LuaTable<Integer, LuaTable> paramLuaTable) { this.a = paramLuaTable; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaPreferenceFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */