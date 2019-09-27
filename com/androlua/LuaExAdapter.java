package com.androlua;

import com.luajava.LuaTable;

public class LuaExAdapter extends LuaExpandableListAdapter {
  public LuaExAdapter(LuaContext paramLuaContext, LuaTable paramLuaTable1, LuaTable paramLuaTable2) { this(paramLuaContext, null, null, paramLuaTable1, paramLuaTable2); }
  
  public LuaExAdapter(LuaContext paramLuaContext, LuaTable<Integer, LuaTable<String, Object>> paramLuaTable1, LuaTable<Integer, LuaTable<Integer, LuaTable<String, Object>>> paramLuaTable2, LuaTable paramLuaTable3, LuaTable paramLuaTable4) { super(paramLuaContext, paramLuaTable1, paramLuaTable2, paramLuaTable3, paramLuaTable4); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaExAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */