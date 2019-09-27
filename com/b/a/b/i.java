package com.b.a.b;

public class i extends h {
  private static h f;
  
  private static final String[] g = "and|break|case|continue|default|defer|do|else|elseif|end|false|for|function|goto|if|in|lambda|local|nil|not|or|repeat|return|switch|then|true|until|when|while".split("\\|");
  
  private static final String[] h = "self|__add|__band|__bnot|__bor|__bxor|__call|__close|__concat|__div|__eq|__gc|__idiv|__index|__le|__len|__lt|__mod|__mul|__newindex|__pow|__shl|__shr|__sub|__tostring|__unm|_ENV|_G|assert|collectgarbage|dofile|error|findtable|getmetatable|ipairs|load|loadfile|loadstring|module|next|pairs|pcall|print|rawequal|rawget|rawlen|rawset|require|select|self|setmetatable|tointeger|tonumber|tostring|type|unpack|xpcall|activity|call|compile|dump|each|enum|import|loadbitmap|loadlayout|loadmenu|service|set|task|thread|timer|coroutine|debug|io|luajava|math|os|package|string|table|utf8".split("\\|");
  
  private static final char[] i = { 
      '(', ')', '{', '}', ',', ';', '=', '+', '-', '/', 
      '*', '&', '!', '|', ':', '[', ']', '<', '>', '?', 
      '~', '%', '^' };
  
  private i() {
    a(i);
    a(g);
    b(h);
    a("io", "close|flush|info|input|isdir|lines|ls|mkdir|open|output|popen|read|readall|stderr|stdin|stdout|tmpfile|type|write".split("\\|"));
    a("string", "byte|char|dump|find|format|gfind|gmatch|gsub|len|lower|match|pack|packsize|rep|reverse|sub|unpack|upper".split("\\|"));
    a("luajava", "astable|bindClass|clear|coding|createArray|createProxy|getContext|instanceof|loadLib|loaded|luapath|new|newArray|newInstance|override|package|tostring".split("\\|"));
    a("os", "clock|date|difftime|execute|exit|getenv|remove|rename|setlocale|time|tmpname".split("\\|"));
    a("table", "clear|clone|concat|const|find|foreach|foreachi|gfind|insert|maxn|move|pack|remove|size|sort|unpack".split("\\|"));
    a("math", "abs|acos|asin|atan|atan2|ceil|cos|cosh|deg|exp|floor|fmod|frexp|huge|ldexp|log|log10|max|maxinteger|min|mininteger|modf|pi|pow|rad|random|randomseed|sin|sinh|sqrt|tan|tanh|tointeger|type|ult".split("\\|"));
    a("utf8", "byte|char|charpattern|charpos|codepoint|codes|escape|find|fold|gfind|gmatch|gsub|insert|len|lower|match|ncasecmp|next|offset|remove|reverse|sub|title|upper|width|widthindex".split("\\|"));
    a("coroutine", "create|isyieldable|resume|running|status|wrap|yield".split("\\|"));
    a("package", "config|cpath|loaded|loaders|loadlib|path|preload|searchers|searchpath|seeall".split("\\|"));
    a("debug", "debug|gethook|getinfo|getlocal|getmetatable|getregistry|getupvalue|getuservalue|sethook|setlocal|setmetatable|setupvalue|setuservalue|traceback|upvalueid|upvaluejoin".split("\\|"));
  }
  
  public static h g() {
    if (f == null)
      f = new i(); 
    return f;
  }
  
  public boolean a(char paramChar1, char paramChar2) { return (paramChar1 == '-' && paramChar2 == '-'); }
  
  public boolean b(char paramChar1, char paramChar2) { return (paramChar1 == '[' && paramChar2 == '['); }
  
  public boolean c(char paramChar1, char paramChar2) { return (paramChar1 == ']' && paramChar2 == ']'); }
  
  public boolean h(char paramChar) { return false; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\b\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */