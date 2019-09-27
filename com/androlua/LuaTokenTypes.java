package com.androlua;

public static enum LuaTokenTypes {
  AND, ASSIGN, AT, BAD_CHARACTER, BIT_AND, BIT_LTLT, BIT_OR, BIT_RTRT, BIT_TILDE, BLOCK_COMMENT, BREAK, CASE, COLON, COMMA, CONCAT, CONTINUE, DEFAULT, DEFER, DIV, DO, DOC_COMMENT, DOT, DOUBLE_COLON, DOUBLE_DIV, ELLIPSIS, ELSE, ELSEIF, END, ENDREGION, EQ, EXP, FALSE, FOR, FUNCTION, GE, GETN, GOTO, GT, IF, IN, LABEL, LAMBDA, LBRACK, LCURLY, LE, LEF, LOCAL, LONG_STRING, LPAREN, LT, MEAN, MINUS, MOD, MULT, NAME, NE, NEW_LINE, NIL, NOT, NUMBER, OR, PLUS, RBRACK, RCURLY, REGION, REPEAT, RETURN, RPAREN, SEMI, SHEBANG, SHEBANG_CONTENT, SHORT_COMMENT, STRING, SWITCH, THEN, TRUE, UNTIL, WHEN, WHILE, WHITE_SPACE;
  
  static  {
    NEW_LINE = new LuaTokenTypes("NEW_LINE", 1);
    WHITE_SPACE = new LuaTokenTypes("WHITE_SPACE", 2);
    BAD_CHARACTER = new LuaTokenTypes("BAD_CHARACTER", 3);
    NAME = new LuaTokenTypes("NAME", 4);
    NUMBER = new LuaTokenTypes("NUMBER", 5);
    PLUS = new LuaTokenTypes("PLUS", 6);
    DOT = new LuaTokenTypes("DOT", 7);
    MINUS = new LuaTokenTypes("MINUS", 8);
    LBRACK = new LuaTokenTypes("LBRACK", 9);
    ASSIGN = new LuaTokenTypes("ASSIGN", 10);
    RBRACK = new LuaTokenTypes("RBRACK", 11);
    GETN = new LuaTokenTypes("GETN", 12);
    NOT = new LuaTokenTypes("NOT", 13);
    GT = new LuaTokenTypes("GT", 14);
    LT = new LuaTokenTypes("LT", 15);
    BIT_TILDE = new LuaTokenTypes("BIT_TILDE", 16);
    MULT = new LuaTokenTypes("MULT", 17);
    MOD = new LuaTokenTypes("MOD", 18);
    DIV = new LuaTokenTypes("DIV", 19);
    LPAREN = new LuaTokenTypes("LPAREN", 20);
    RPAREN = new LuaTokenTypes("RPAREN", 21);
    LCURLY = new LuaTokenTypes("LCURLY", 22);
    RCURLY = new LuaTokenTypes("RCURLY", 23);
    COMMA = new LuaTokenTypes("COMMA", 24);
    SEMI = new LuaTokenTypes("SEMI", 25);
    COLON = new LuaTokenTypes("COLON", 26);
    EXP = new LuaTokenTypes("EXP", 27);
    BIT_AND = new LuaTokenTypes("BIT_AND", 28);
    BIT_OR = new LuaTokenTypes("BIT_OR", 29);
    STRING = new LuaTokenTypes("STRING", 30);
    LONG_STRING = new LuaTokenTypes("LONG_STRING", 31);
    CONCAT = new LuaTokenTypes("CONCAT", 32);
    IN = new LuaTokenTypes("IN", 33);
    IF = new LuaTokenTypes("IF", 34);
    OR = new LuaTokenTypes("OR", 35);
    DO = new LuaTokenTypes("DO", 36);
    EQ = new LuaTokenTypes("EQ", 37);
    SHEBANG = new LuaTokenTypes("SHEBANG", 38);
    NE = new LuaTokenTypes("NE", 39);
    GE = new LuaTokenTypes("GE", 40);
    BIT_RTRT = new LuaTokenTypes("BIT_RTRT", 41);
    LE = new LuaTokenTypes("LE", 42);
    BIT_LTLT = new LuaTokenTypes("BIT_LTLT", 43);
    DOUBLE_DIV = new LuaTokenTypes("DOUBLE_DIV", 44);
    DOUBLE_COLON = new LuaTokenTypes("DOUBLE_COLON", 45);
    AND = new LuaTokenTypes("AND", 46);
    SHORT_COMMENT = new LuaTokenTypes("SHORT_COMMENT", 47);
    ELLIPSIS = new LuaTokenTypes("ELLIPSIS", 48);
    END = new LuaTokenTypes("END", 49);
    NIL = new LuaTokenTypes("NIL", 50);
    LEF = new LuaTokenTypes("LEF", 51);
    MEAN = new LuaTokenTypes("MEAN", 52);
    FOR = new LuaTokenTypes("FOR", 53);
    DOC_COMMENT = new LuaTokenTypes("DOC_COMMENT", 54);
    ELSE = new LuaTokenTypes("ELSE", 55);
    GOTO = new LuaTokenTypes("GOTO", 56);
    CASE = new LuaTokenTypes("CASE", 57);
    TRUE = new LuaTokenTypes("TRUE", 58);
    THEN = new LuaTokenTypes("THEN", 59);
    BLOCK_COMMENT = new LuaTokenTypes("BLOCK_COMMENT", 60);
    BREAK = new LuaTokenTypes("BREAK", 61);
    LOCAL = new LuaTokenTypes("LOCAL", 62);
    FALSE = new LuaTokenTypes("FALSE", 63);
    UNTIL = new LuaTokenTypes("UNTIL", 64);
    WHILE = new LuaTokenTypes("WHILE", 65);
    RETURN = new LuaTokenTypes("RETURN", 66);
    REPEAT = new LuaTokenTypes("REPEAT", 67);
    ELSEIF = new LuaTokenTypes("ELSEIF", 68);
    CONTINUE = new LuaTokenTypes("CONTINUE", 69);
    SWITCH = new LuaTokenTypes("SWITCH", 70);
    DEFAULT = new LuaTokenTypes("DEFAULT", 71);
    REGION = new LuaTokenTypes("REGION", 72);
    FUNCTION = new LuaTokenTypes("FUNCTION", 73);
    ENDREGION = new LuaTokenTypes("ENDREGION", 74);
    LABEL = new LuaTokenTypes("LABEL", 75);
    AT = new LuaTokenTypes("AT", 76);
    DEFER = new LuaTokenTypes("DEFER", 77);
    WHEN = new LuaTokenTypes("WHEN", 78);
    LAMBDA = new LuaTokenTypes("LAMBDA", 79);
    a = new LuaTokenTypes[] { 
        SHEBANG_CONTENT, NEW_LINE, WHITE_SPACE, BAD_CHARACTER, NAME, NUMBER, PLUS, DOT, MINUS, LBRACK, 
        ASSIGN, RBRACK, GETN, NOT, GT, LT, BIT_TILDE, MULT, MOD, DIV, 
        LPAREN, RPAREN, LCURLY, RCURLY, COMMA, SEMI, COLON, EXP, BIT_AND, BIT_OR, 
        STRING, LONG_STRING, CONCAT, IN, IF, OR, DO, EQ, SHEBANG, NE, 
        GE, BIT_RTRT, LE, BIT_LTLT, DOUBLE_DIV, DOUBLE_COLON, AND, SHORT_COMMENT, ELLIPSIS, END, 
        NIL, LEF, MEAN, FOR, DOC_COMMENT, ELSE, GOTO, CASE, TRUE, THEN, 
        BLOCK_COMMENT, BREAK, LOCAL, FALSE, UNTIL, WHILE, RETURN, REPEAT, ELSEIF, CONTINUE, 
        SWITCH, DEFAULT, REGION, FUNCTION, ENDREGION, LABEL, AT, DEFER, WHEN, LAMBDA };
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaTokenTypes.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */