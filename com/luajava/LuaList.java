package com.luajava;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class LuaList extends LuaObject implements List {
  public LuaList(LuaState paramLuaState) {
    super(paramLuaState);
    paramLuaState.newTable();
    a(-1);
  }
  
  public void add(int paramInt, Object paramObject) {}
  
  public boolean add(Object paramObject) {
    push();
    int i = this.b.rawLen(-1);
    try {
      this.b.pushObjectValue(paramObject);
      this.b.setI(-2, (i + 1));
      pop();
      return true;
    } catch (LuaException paramObject) {
      pop();
      return false;
    } 
  }
  
  public boolean addAll(int paramInt, Collection paramCollection) { return false; }
  
  public boolean addAll(Collection paramCollection) { return false; }
  
  public void clear() {}
  
  public boolean contains(Object paramObject) { return false; }
  
  public boolean containsAll(Collection paramCollection) { return false; }
  
  public Object get(int paramInt) { return null; }
  
  public int indexOf(Object paramObject) { return 0; }
  
  public boolean isEmpty() {
    push();
    int i = this.b.rawLen(-1);
    this.b.pop(1);
    return (i == 0);
  }
  
  public Iterator iterator() { return null; }
  
  public int lastIndexOf(Object paramObject) { return 0; }
  
  public ListIterator listIterator() { return null; }
  
  public ListIterator listIterator(int paramInt) { return null; }
  
  public Object remove(int paramInt) { return null; }
  
  public boolean remove(Object paramObject) { return false; }
  
  public boolean removeAll(Collection paramCollection) { return false; }
  
  public boolean retainAll(Collection paramCollection) { return false; }
  
  public Object set(int paramInt, Object paramObject) { return null; }
  
  public int size() {
    push();
    int i = this.b.rawLen(-1);
    this.b.pop(1);
    return i;
  }
  
  public List subList(int paramInt1, int paramInt2) { return null; }
  
  public Object[] toArray() { return null; }
  
  public Object[] toArray(Object[] paramArrayOfObject) { return null; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\luajava\LuaList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */