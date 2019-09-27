package bsh;

import java.io.FileReader;
import java.io.InputStream;
import java.io.Reader;

public class Parser implements ParserConstants, ParserTreeConstants {
  protected JJTParserState a = new JJTParserState();
  
  boolean b = false;
  
  JavaCharStream c;
  
  private int d;
  
  private Token e;
  
  private Token f;
  
  private int g;
  
  private boolean h;
  
  private final LookaheadSuccess i = new LookaheadSuccess(null);
  
  public Token jj_nt;
  
  public boolean lookingAhead = false;
  
  public Token token;
  
  public ParserTokenManager token_source;
  
  public Parser(ParserTokenManager paramParserTokenManager) {
    this.token_source = paramParserTokenManager;
    this.token = new Token();
    this.d = -1;
  }
  
  public Parser(InputStream paramInputStream) {
    this.c = new JavaCharStream(paramInputStream, 1, 1);
    this.token_source = new ParserTokenManager(this.c);
    this.token = new Token();
    this.d = -1;
  }
  
  public Parser(Reader paramReader) {
    this.c = new JavaCharStream(paramReader, 1, 1);
    this.token_source = new ParserTokenManager(this.c);
    this.token = new Token();
    this.d = -1;
  }
  
  private final boolean A() {
    if (w())
      return true; 
    Token token1 = this.e;
    if (i())
      this.e = token1; 
    return false;
  }
  
  private final boolean A(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = da();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean B() { return cH(); }
  
  private final boolean B(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = dg();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean C() { return cQ() ? true : (G(78)); }
  
  private final boolean C(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = cs();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean D() { return f(); }
  
  private final boolean D(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = bU();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean E() { return f(); }
  
  private final boolean E(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = bz();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final Token F(int paramInt) {
    Token token1 = this.token;
    if (token1.next != null) {
      this.token = this.token.next;
    } else {
      Token token2 = this.token;
      Token token3 = this.token_source.getNextToken();
      token2.next = token3;
      this.token = token3;
    } 
    this.d = -1;
    if (this.token.kind == paramInt)
      return this.token; 
    this.token = token1;
    throw generateParseException();
  }
  
  private final boolean F() {
    Token token1 = this.e;
    if (G()) {
      this.e = token1;
      if (E()) {
        this.e = token1;
        if (G(78)) {
          this.e = token1;
          if (C()) {
            this.e = token1;
            if (B()) {
              this.e = token1;
              if (z()) {
                this.e = token1;
                if (y()) {
                  this.e = token1;
                  if (x()) {
                    this.e = token1;
                    this.lookingAhead = true;
                    this.h = a();
                    this.lookingAhead = false;
                    if (!this.h || v()) {
                      this.e = token1;
                      if (t()) {
                        this.e = token1;
                        if (s()) {
                          this.e = token1;
                          if (r()) {
                            this.e = token1;
                            if (p()) {
                              this.e = token1;
                              if (n()) {
                                this.e = token1;
                                if (m()) {
                                  this.e = token1;
                                  if (l())
                                    return true; 
                                } 
                              } 
                            } 
                          } 
                        } 
                      } 
                    } 
                  } 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean G() { return h(); }
  
  private final boolean G(int paramInt) {
    if (this.e == this.f) {
      this.g--;
      if (this.e.next == null) {
        Token token1 = this.e;
        Token token2 = this.token_source.getNextToken();
        token1.next = token2;
        this.e = token2;
        this.f = token2;
      } else {
        Token token1 = this.e.next;
        this.e = token1;
        this.f = token1;
      } 
    } else {
      this.e = this.e.next;
    } 
    if (this.e.kind != paramInt)
      return true; 
    if (this.g == 0 && this.e == this.f)
      throw this.i; 
    return false;
  }
  
  private final boolean H() {
    Token token1 = this.e;
    if (G(81)) {
      this.e = token1;
      if (G(120)) {
        this.e = token1;
        if (G(121)) {
          this.e = token1;
          if (G(127)) {
            this.e = token1;
            if (G(118)) {
              this.e = token1;
              if (G(119)) {
                this.e = token1;
                if (G(122)) {
                  this.e = token1;
                  if (G(126)) {
                    this.e = token1;
                    if (G(124)) {
                      this.e = token1;
                      if (G(128)) {
                        this.e = token1;
                        if (G(129)) {
                          this.e = token1;
                          if (G(130)) {
                            this.e = token1;
                            if (G(131)) {
                              this.e = token1;
                              if (G(132)) {
                                this.e = token1;
                                if (G(133))
                                  return true; 
                              } 
                            } 
                          } 
                        } 
                      } 
                    } 
                  } 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean I() { return G(79) ? true : (af()); }
  
  private final boolean J() { return G(76) ? true : (G(77)); }
  
  private final boolean K() {
    if (ae())
      return true; 
    Token token1 = this.e;
    if (D())
      this.e = token1; 
    return false;
  }
  
  private final boolean L() {
    Token token1;
    if (J())
      return true; 
    do {
      token1 = this.e;
    } while (!J());
    this.e = token1;
    return aQ();
  }
  
  private final boolean M() { return cc() ? true : (H()); }
  
  private final boolean N() { return G(76) ? true : (G(77)); }
  
  private final boolean O() { return S(); }
  
  private final boolean P() { return G(76) ? true : (U() ? true : (G(77))); }
  
  private final boolean Q() { return cc() ? true : (H() ? true : (U())); }
  
  private final boolean R() {
    Token token1;
    if (P())
      return true; 
    do {
      token1 = this.e;
    } while (!P());
    this.e = token1;
    do {
      token1 = this.e;
    } while (!N());
    this.e = token1;
    return false;
  }
  
  private final boolean S() {
    Token token1 = this.e;
    if (R()) {
      this.e = token1;
      if (L())
        return true; 
    } 
    return false;
  }
  
  private final boolean T() { return A(); }
  
  private final boolean U() {
    Token token1 = this.e;
    if (V()) {
      this.e = token1;
      if (T())
        return true; 
    } 
    return false;
  }
  
  private final boolean V() { return Q(); }
  
  private final boolean W() {
    if (G(40))
      return true; 
    if (af())
      return true; 
    Token token1 = this.e;
    if (O()) {
      this.e = token1;
      if (K())
        return true; 
    } 
    return false;
  }
  
  private final boolean X() { return G(40) ? true : (as() ? true : (S())); }
  
  private final boolean Y() {
    Token token1 = this.e;
    if (X()) {
      this.e = token1;
      if (W())
        return true; 
    } 
    return false;
  }
  
  private final boolean Z() { return G(79) ? true : (U()); }
  
  private final boolean a(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = cG();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean aA() { return as(); }
  
  private final boolean aB() { return G(79) ? true : (aL()); }
  
  private final boolean aC() { return G(67); }
  
  private final boolean aD() {
    Token token1 = this.e;
    if (aA()) {
      this.e = token1;
      if (ao())
        return true; 
    } 
    do {
      token1 = this.e;
    } while (!ay());
    this.e = token1;
    return false;
  }
  
  private final boolean aE() { return G(66); }
  
  private final boolean aF() { return G(28) ? true : (f()); }
  
  private final boolean aG() { return G(79) ? true : (aX()); }
  
  private final boolean aH() { return G(16) ? true : (G(72) ? true : (aL() ? true : (G(73) ? true : (f())))); }
  
  private final boolean aI() { return G(69); }
  
  private final boolean aJ() { return aD() ? true : (G(69)); }
  
  private final boolean aK() {
    Token token1;
    if (aL())
      return true; 
    do {
      token1 = this.e;
    } while (!aB());
    this.e = token1;
    return false;
  }
  
  private final boolean aL() {
    Token token1 = this.e;
    if (aJ()) {
      this.e = token1;
      if (aI())
        return true; 
    } 
    return false;
  }
  
  private final boolean aM() {
    if (G(56))
      return true; 
    if (f())
      return true; 
    do {
      token1 = this.e;
    } while (!aH());
    this.e = token1;
    Token token1 = this.e;
    if (aF())
      this.e = token1; 
    return false;
  }
  
  private final boolean aN() {
    if (G(72))
      return true; 
    Token token1 = this.e;
    if (aK())
      this.e = token1; 
    return G(73);
  }
  
  private final boolean aO() {
    Token token1;
    if (aX())
      return true; 
    do {
      token1 = this.e;
    } while (!aG());
    this.e = token1;
    return false;
  }
  
  private final boolean aP() { return G(64); }
  
  private final boolean aQ() {
    if (G(74))
      return true; 
    Token token1 = this.e;
    if (aO())
      this.e = token1; 
    token1 = this.e;
    if (G(79))
      this.e = token1; 
    return G(75);
  }
  
  private final boolean aR() { return G(80) ? true : (G(104)); }
  
  private final boolean aS() { return G(53) ? true : (U() ? true : (G(78))); }
  
  private final boolean aT() { return G(81) ? true : (aX()); }
  
  private final boolean aU() { return U(); }
  
  private final boolean aV() { return U(); }
  
  private final boolean aW() { return aQ(); }
  
  private final boolean aX() {
    Token token1 = this.e;
    if (aW()) {
      this.e = token1;
      if (aU())
        return true; 
    } 
    return false;
  }
  
  private final boolean aY() { return G(51) ? true : (G(72) ? true : (U() ? true : (G(73) ? true : (f())))); }
  
  private final boolean aZ() { return G(79) ? true : (bf()); }
  
  private final boolean aa() {
    Token token1;
    if (af())
      return true; 
    do {
      token1 = this.e;
    } while (!I());
    this.e = token1;
    return false;
  }
  
  private final boolean ab() {
    Token token1;
    if (U())
      return true; 
    do {
      token1 = this.e;
    } while (!Z());
    this.e = token1;
    return false;
  }
  
  private final boolean ac() { return ab(); }
  
  private final boolean ad() { return G(80) ? true : (G(69)); }
  
  private final boolean ae() {
    if (G(72))
      return true; 
    Token token1 = this.e;
    if (ac())
      this.e = token1; 
    return G(73);
  }
  
  private final boolean af() {
    Token token1;
    if (G(69))
      return true; 
    do {
      token1 = this.e;
    } while (!ad());
    this.e = token1;
    return false;
  }
  
  private final boolean ag() { return G(22); }
  
  private final boolean ah() { return G(29); }
  
  private final boolean ai() { return G(26); }
  
  private final boolean aj() { return G(38); }
  
  private final boolean ak() { return G(36); }
  
  private final boolean al() { return G(55); }
  
  private final boolean am() {
    Token token1 = this.e;
    if (al()) {
      this.e = token1;
      if (ai())
        return true; 
    } 
    return false;
  }
  
  private final boolean an() { return G(47); }
  
  private final boolean ao() { return af(); }
  
  private final boolean ap() { return G(14); }
  
  private final boolean aq() { return G(17); }
  
  private final boolean ar() { return G(11); }
  
  private final boolean as() {
    Token token1 = this.e;
    if (ar()) {
      this.e = token1;
      if (aq()) {
        this.e = token1;
        if (ap()) {
          this.e = token1;
          if (an()) {
            this.e = token1;
            if (ak()) {
              this.e = token1;
              if (aj()) {
                this.e = token1;
                if (ah()) {
                  this.e = token1;
                  if (ag())
                    return true; 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean at() { return G(57); }
  
  private final boolean au() { return aD(); }
  
  private final boolean av() {
    Token token1 = this.e;
    if (aw()) {
      this.e = token1;
      if (au())
        return true; 
    } 
    return false;
  }
  
  private final boolean aw() { return G(57); }
  
  private final boolean ax() { return G(41); }
  
  private final boolean ay() { return G(76) ? true : (G(77)); }
  
  private final boolean az() { return am(); }
  
  private final boolean b() { return bY(); }
  
  private final boolean b(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = bt();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean bA() { return bW(); }
  
  private final boolean bB() { return G(69); }
  
  private final boolean bC() { return av() ? true : (G(69)); }
  
  private final boolean bD() {
    if (cu())
      return true; 
    Token token1 = this.e;
    if (bB()) {
      this.e = token1;
      if (bC())
        return true; 
    } 
    if (aN())
      return true; 
    token1 = this.e;
    if (bx())
      this.e = token1; 
    token1 = this.e;
    if (bu()) {
      this.e = token1;
      if (G(78))
        return true; 
    } 
    return false;
  }
  
  private final boolean bE() { return bm(); }
  
  private final boolean bF() { return af(); }
  
  private final boolean bG() { return bq(); }
  
  private final boolean bH() {
    Token token1 = this.e;
    if (bG()) {
      this.e = token1;
      if (bE())
        return true; 
    } 
    return false;
  }
  
  private final boolean bI() { return aD(); }
  
  private final boolean bJ() { return bw(); }
  
  private final boolean bK() { return G(37); }
  
  private final boolean bL() { return bW(); }
  
  private final boolean bM() { return Y(); }
  
  private final boolean bN() { return G(72) ? true : (U() ? true : (G(73))); }
  
  private final boolean bO() { return G(30) ? true : (G(72) ? true : (aD() ? true : (G(69) ? true : (G(89) ? true : (U() ? true : (G(73) ? true : (F()))))))); }
  
  private final boolean bP() { return G(23) ? true : (F()); }
  
  private final boolean bQ() { return G(33) ? true : (aa()); }
  
  private final boolean bR() {
    Token token1 = this.e;
    if (bS()) {
      this.e = token1;
      if (bN()) {
        this.e = token1;
        if (bM()) {
          this.e = token1;
          if (bL()) {
            this.e = token1;
            if (bI()) {
              this.e = token1;
              if (bF())
                return true; 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean bS() { return bc(); }
  
  private final boolean bT() { return G(25) ? true : (af()); }
  
  private final boolean bU() { return G(30) ? true : (G(72) ? true : (G(69) ? true : (G(89) ? true : (U() ? true : (G(73) ? true : (F())))))); }
  
  private final boolean bV() {
    Token token1 = this.e;
    if (bU()) {
      this.e = token1;
      if (bO())
        return true; 
    } 
    return false;
  }
  
  private final boolean bW() { return af() ? true : (ae()); }
  
  private final boolean bX() { return bH(); }
  
  private final boolean bY() {
    if (cu())
      return true; 
    Token token1 = this.e;
    if (G(13)) {
      this.e = token1;
      if (bK())
        return true; 
    } 
    if (G(69))
      return true; 
    token1 = this.e;
    if (bT())
      this.e = token1; 
    token1 = this.e;
    if (bQ())
      this.e = token1; 
    return f();
  }
  
  private final boolean bZ() { return G(72) ? true : (as()); }
  
  private final boolean ba() { return G(79) ? true : (cQ()); }
  
  private final boolean bb() {
    if (G(46))
      return true; 
    Token token1 = this.e;
    if (aV())
      this.e = token1; 
    return G(78);
  }
  
  private final boolean bc() {
    Token token1 = this.e;
    if (bd()) {
      this.e = token1;
      if (aP()) {
        this.e = token1;
        if (aE()) {
          this.e = token1;
          if (aC()) {
            this.e = token1;
            if (az()) {
              this.e = token1;
              if (ax()) {
                this.e = token1;
                if (at())
                  return true; 
              } 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean bd() { return G(60); }
  
  private final boolean be() { return ae(); }
  
  private final boolean bf() {
    if (G(69))
      return true; 
    Token token1 = this.e;
    if (aT())
      this.e = token1; 
    return false;
  }
  
  private final boolean bg() { return bc(); }
  
  private final boolean bh() {
    if (G(19))
      return true; 
    Token token1 = this.e;
    if (G(69))
      this.e = token1; 
    return G(78);
  }
  
  private final boolean bi() {
    if (G(12))
      return true; 
    Token token1 = this.e;
    if (G(69))
      this.e = token1; 
    return G(78);
  }
  
  private final boolean bj() { return bm(); }
  
  private final boolean bk() { return G(34) ? true : (G(104) ? true : (G(78))); }
  
  private final boolean bl() { return G(74) ? true : (U() ? true : (G(75))); }
  
  private final boolean bm() {
    Token token1;
    if (cQ())
      return true; 
    do {
      token1 = this.e;
    } while (!ba());
    this.e = token1;
    return false;
  }
  
  private final boolean bn() {
    if (G(80))
      return true; 
    if (G(69))
      return true; 
    Token token1 = this.e;
    if (be())
      this.e = token1; 
    return false;
  }
  
  private final boolean bo() {
    Token token1 = this.e;
    if (G(48))
      this.e = token1; 
    if (G(34))
      return true; 
    if (af())
      return true; 
    token1 = this.e;
    if (aR())
      this.e = token1; 
    return G(78);
  }
  
  private final boolean bp() {
    Token token1 = this.e;
    if (bo()) {
      this.e = token1;
      if (bk())
        return true; 
    } 
    return false;
  }
  
  private final boolean bq() {
    Token token1;
    if (cu())
      return true; 
    if (aD())
      return true; 
    if (bf())
      return true; 
    do {
      token1 = this.e;
    } while (!aZ());
    this.e = token1;
    return false;
  }
  
  private final boolean br() { return G(76) ? true : (U() ? true : (G(77))); }
  
  private final boolean bs() { return G(42) ? true : (af()); }
  
  private final boolean bt() { return G(69) ? true : (G(72)); }
  
  private final boolean bu() { return f(); }
  
  private final boolean bv() { return G(80) ? true : (G(13)); }
  
  private final boolean bw() {
    Token token1 = this.e;
    if (bv()) {
      this.e = token1;
      if (br()) {
        this.e = token1;
        if (bn()) {
          this.e = token1;
          if (bl())
            return true; 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean bx() { return G(54) ? true : (aa()); }
  
  private final boolean by() { return aD() ? true : (G(80) ? true : (G(13))); }
  
  private final boolean bz() { return cu() ? true : (aD() ? true : (G(69))); }
  
  private final boolean c() {
    Token token1 = this.e;
    if (b()) {
      this.e = token1;
      if (do()) {
        this.e = token1;
        if (dm()) {
          this.e = token1;
          if (dj()) {
            this.e = token1;
            if (dg()) {
              this.e = token1;
              if (dd()) {
                this.e = token1;
                if (db()) {
                  this.e = token1;
                  if (cY())
                    return true; 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean c(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = bo();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean cA() {
    Token token1 = this.e;
    if (G(87)) {
      this.e = token1;
      if (G(86))
        return true; 
    } 
    return cO();
  }
  
  private final boolean cB() {
    Token token1 = this.e;
    if (cA()) {
      this.e = token1;
      if (cy()) {
        this.e = token1;
        if (cx())
          return true; 
      } 
    } 
    return false;
  }
  
  private final boolean cC() { return G(15) ? true : (U() ? true : (G(89))); }
  
  private final boolean cD() {
    Token token1 = this.e;
    if (cC()) {
      this.e = token1;
      if (cz())
        return true; 
    } 
    return false;
  }
  
  private final boolean cE() {
    Token token1;
    if (cD())
      return true; 
    do {
      token1 = this.e;
    } while (!cs());
    this.e = token1;
    return false;
  }
  
  private final boolean cF() { return G(101) ? true : (cc()); }
  
  private final boolean cG() { return c(); }
  
  private final boolean cH() {
    Token token1;
    if (G(50))
      return true; 
    if (G(72))
      return true; 
    if (U())
      return true; 
    if (G(73))
      return true; 
    if (G(74))
      return true; 
    do {
      token1 = this.e;
    } while (!cE());
    this.e = token1;
    return G(75);
  }
  
  private final boolean cI() {
    Token token1 = this.e;
    if (G(104)) {
      this.e = token1;
      if (G(105)) {
        this.e = token1;
        if (G(111))
          return true; 
      } 
    } 
    return cO();
  }
  
  private final boolean cJ() { return G(100) ? true : (cc()); }
  
  private final boolean cK() { return cB(); }
  
  private final boolean cL() { return cF(); }
  
  private final boolean cM() { return cJ(); }
  
  private final boolean cN() {
    Token token1 = this.e;
    if (G(102)) {
      this.e = token1;
      if (G(103))
        return true; 
    } 
    return cO();
  }
  
  private final boolean cO() {
    Token token1 = this.e;
    if (cN()) {
      this.e = token1;
      if (cM()) {
        this.e = token1;
        if (cL()) {
          this.e = token1;
          if (cK())
            return true; 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean cP() { return G(54) ? true : (aa()); }
  
  private final boolean cQ() { return U(); }
  
  private final boolean cR() {
    Token token1;
    if (cO())
      return true; 
    do {
      token1 = this.e;
    } while (!cI());
    this.e = token1;
    return false;
  }
  
  private final boolean cS() {
    Token token1 = this.e;
    if (G(102)) {
      this.e = token1;
      if (G(103))
        return true; 
    } 
    return cR();
  }
  
  private final boolean cT() {
    Token token1;
    if (cR())
      return true; 
    do {
      token1 = this.e;
    } while (!cS());
    this.e = token1;
    return false;
  }
  
  private final boolean cU() { return G(68); }
  
  private final boolean cV() {
    Token token1 = this.e;
    if (G(112)) {
      this.e = token1;
      if (G(113)) {
        this.e = token1;
        if (G(114)) {
          this.e = token1;
          if (G(115)) {
            this.e = token1;
            if (G(116)) {
              this.e = token1;
              if (G(117))
                return true; 
            } 
          } 
        } 
      } 
    } 
    return cT();
  }
  
  private final boolean cW() {
    Token token1 = this.e;
    if (G(90)) {
      this.e = token1;
      if (G(95))
        return true; 
    } 
    return dh();
  }
  
  private final boolean cX() {
    Token token1;
    if (cT())
      return true; 
    do {
      token1 = this.e;
    } while (!cV());
    this.e = token1;
    return false;
  }
  
  private final boolean cY() { return cU(); }
  
  private final boolean cZ() {
    Token token1 = this.e;
    if (G(84)) {
      this.e = token1;
      if (G(85)) {
        this.e = token1;
        if (G(82)) {
          this.e = token1;
          if (G(83)) {
            this.e = token1;
            if (G(91)) {
              this.e = token1;
              if (G(92)) {
                this.e = token1;
                if (G(93)) {
                  this.e = token1;
                  if (G(94))
                    return true; 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return cX();
  }
  
  private final boolean ca() { return bj(); }
  
  private final boolean cb() { return U(); }
  
  private final boolean cc() {
    Token token1;
    if (bR())
      return true; 
    do {
      token1 = this.e;
    } while (!bJ());
    this.e = token1;
    return false;
  }
  
  private final boolean cd() { return G(72) ? true : (aD() ? true : (G(73) ? true : (cB()))); }
  
  private final boolean ce() { return G(72) ? true : (aD() ? true : (G(73) ? true : (cO()))); }
  
  private final boolean cf() {
    if (G(30))
      return true; 
    if (G(72))
      return true; 
    Token token1 = this.e;
    if (bX())
      this.e = token1; 
    if (G(78))
      return true; 
    token1 = this.e;
    if (cb())
      this.e = token1; 
    if (G(78))
      return true; 
    token1 = this.e;
    if (ca())
      this.e = token1; 
    return G(73) ? true : (F());
  }
  
  private final boolean cg() {
    Token token1 = this.e;
    if (ce()) {
      this.e = token1;
      if (cd())
        return true; 
    } 
    return false;
  }
  
  private final boolean ch() {
    if (cc())
      return true; 
    Token token1 = this.e;
    if (G(100)) {
      this.e = token1;
      if (G(101))
        return true; 
    } 
    return false;
  }
  
  private final boolean ci() { return cc(); }
  
  private final boolean cj() { return G(21) ? true : (F() ? true : (G(59) ? true : (G(72) ? true : (U() ? true : (G(73) ? true : (G(78))))))); }
  
  private final boolean ck() { return G(72) ? true : (af() ? true : (G(76))); }
  
  private final boolean cl() {
    if (cc())
      return true; 
    Token token1 = this.e;
    if (G(100)) {
      this.e = token1;
      if (G(101))
        return true; 
    } 
    return false;
  }
  
  private final boolean cm() {
    Token token1 = this.e;
    if (cl()) {
      this.e = token1;
      if (ci())
        return true; 
    } 
    return false;
  }
  
  private final boolean cn() {
    Token token1 = this.e;
    if (G(43)) {
      this.e = token1;
      if (G(44)) {
        this.e = token1;
        if (G(45)) {
          this.e = token1;
          if (G(51)) {
            this.e = token1;
            if (G(27)) {
              this.e = token1;
              if (G(39)) {
                this.e = token1;
                if (G(52)) {
                  this.e = token1;
                  if (G(58)) {
                    this.e = token1;
                    if (G(10)) {
                      this.e = token1;
                      if (G(48)) {
                        this.e = token1;
                        if (G(49))
                          return true; 
                      } 
                    } 
                  } 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean co() { return G(59) ? true : (G(72) ? true : (U() ? true : (G(73) ? true : (F())))); }
  
  private final boolean cp() {
    if (G(72))
      return true; 
    if (af())
      return true; 
    if (G(73))
      return true; 
    Token token1 = this.e;
    if (G(87)) {
      this.e = token1;
      if (G(86)) {
        this.e = token1;
        if (G(72)) {
          this.e = token1;
          if (G(69)) {
            this.e = token1;
            if (G(40)) {
              this.e = token1;
              if (bg())
                return true; 
            } 
          } 
        } 
      } 
    } 
    return false;
  }
  
  private final boolean cq() { return G(72) ? true : (af() ? true : (G(76) ? true : (G(77)))); }
  
  private final boolean cr() { return cv(); }
  
  private final boolean cs() { return c(); }
  
  private final boolean ct() {
    if (G(32))
      return true; 
    if (G(72))
      return true; 
    if (U())
      return true; 
    if (G(73))
      return true; 
    if (F())
      return true; 
    Token token1 = this.e;
    if (bP())
      this.e = token1; 
    return false;
  }
  
  private final boolean cu() {
    Token token1;
    do {
      token1 = this.e;
    } while (!cn());
    this.e = token1;
    return false;
  }
  
  private final boolean cv() {
    Token token1 = this.e;
    if (cw()) {
      this.e = token1;
      if (cq()) {
        this.e = token1;
        if (cp())
          return true; 
      } 
    } 
    return false;
  }
  
  private final boolean cw() { return G(72) ? true : (as()); }
  
  private final boolean cx() { return cm(); }
  
  private final boolean cy() { return cg(); }
  
  private final boolean cz() { return G(20) ? true : (G(89)); }
  
  private final boolean d() { return c(); }
  
  private final boolean d(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = aG();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean da() { return cu() ? true : (aD() ? true : (G(69))); }
  
  private final boolean db() { return bs(); }
  
  private final boolean dc() {
    Token token1;
    if (cX())
      return true; 
    do {
      token1 = this.e;
    } while (!cZ());
    this.e = token1;
    return false;
  }
  
  private final boolean dd() { return bp(); }
  
  private final boolean de() {
    if (cu())
      return true; 
    if (G(69))
      return true; 
    if (aN())
      return true; 
    Token token1 = this.e;
    if (cP())
      this.e = token1; 
    return G(74);
  }
  
  private final boolean df() { return G(35) ? true : (aD()); }
  
  private final boolean dg() { return F(); }
  
  private final boolean dh() {
    if (dc())
      return true; 
    Token token1 = this.e;
    if (df())
      this.e = token1; 
    return false;
  }
  
  private final boolean di() { return cu() ? true : (av() ? true : (G(69) ? true : (G(72)))); }
  
  private final boolean dj() { return bq() ? true : (G(78)); }
  
  private final boolean dk() {
    if (cu())
      return true; 
    Token token1 = this.e;
    if (G(13)) {
      this.e = token1;
      if (G(37))
        return true; 
    } 
    return false;
  }
  
  private final boolean dl() { return G(110) ? true : (e()); }
  
  private final boolean dm() { return bD(); }
  
  private final boolean dn() {
    Token token1;
    if (dh())
      return true; 
    do {
      token1 = this.e;
    } while (!cW());
    this.e = token1;
    return false;
  }
  
  private final boolean do() { return bD(); }
  
  private final boolean dp() {
    Token token1 = this.e;
    if (G(106)) {
      this.e = token1;
      if (G(107))
        return true; 
    } 
    return dn();
  }
  
  private final int dq() {
    Token token1 = this.token.next;
    this.jj_nt = token1;
    if (token1 == null) {
      token1 = this.token;
      Token token2 = this.token_source.getNextToken();
      token1.next = token2;
      int k = token2.kind;
      this.d = k;
      return k;
    } 
    int j = this.jj_nt.kind;
    this.d = j;
    return j;
  }
  
  private final boolean e() {
    Token token1;
    if (dn())
      return true; 
    do {
      token1 = this.e;
    } while (!dp());
    this.e = token1;
    return false;
  }
  
  private final boolean e(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = aJ();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean f() {
    Token token1;
    if (G(74))
      return true; 
    do {
      token1 = this.e;
    } while (!d());
    this.e = token1;
    return G(75);
  }
  
  private final boolean f(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = ay();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean g() {
    Token token1;
    if (e())
      return true; 
    do {
      token1 = this.e;
    } while (!dl());
    this.e = token1;
    return false;
  }
  
  private final boolean g(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = ad();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean h() { return G(69) ? true : (G(89) ? true : (F())); }
  
  private final boolean h(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = M();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean i() { return G(88) ? true : (U() ? true : (G(89) ? true : (A()))); }
  
  private final boolean i(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = cr();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean j() {
    Token token1 = this.e;
    if (G(108)) {
      this.e = token1;
      if (G(109))
        return true; 
    } 
    return g();
  }
  
  private final boolean j(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = cw();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean k() {
    Token token1;
    if (g())
      return true; 
    do {
      token1 = this.e;
    } while (!j());
    this.e = token1;
    return false;
  }
  
  private final boolean k(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = ck();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean l() { return aM(); }
  
  private final boolean l(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = ch();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean m() { return aS(); }
  
  private final boolean m(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = bZ();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  public static void main(String[] paramArrayOfString) {
    boolean bool;
    byte b1 = 0;
    if (paramArrayOfString[0].equals("-p")) {
      b1 = 1;
      bool = true;
    } else {
      bool = false;
    } 
    label17: while (true) {
      if (b1 >= paramArrayOfString.length)
        return; 
      Parser parser = new Parser(new FileReader(paramArrayOfString[b1]));
      parser.setRetainComments(true);
      while (true) {
        if (parser.Line()) {
          b1++;
          continue label17;
        } 
        if (bool)
          System.out.println(parser.popNode()); 
      } 
      break;
    } 
  }
  
  private final boolean n() { return aY(); }
  
  private final boolean n(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = bA();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean o() {
    Token token1 = this.e;
    if (G(98)) {
      this.e = token1;
      if (G(99))
        return true; 
    } 
    return k();
  }
  
  private final boolean o(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = by();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean p() { return bb(); }
  
  private final boolean p(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = bv();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean q() {
    Token token1;
    if (k())
      return true; 
    do {
      token1 = this.e;
    } while (!o());
    this.e = token1;
    return false;
  }
  
  private final boolean q(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = D();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean r() { return bh(); }
  
  private final boolean r(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = X();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean s() { return bi(); }
  
  private final boolean s(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = P();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean t() { return bV(); }
  
  private final boolean t(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = N();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean u() {
    Token token1 = this.e;
    if (G(96)) {
      this.e = token1;
      if (G(97))
        return true; 
    } 
    return q();
  }
  
  private final boolean u(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = R();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean v() { return cf(); }
  
  private final boolean v(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = G();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean w() {
    Token token1;
    if (q())
      return true; 
    do {
      token1 = this.e;
    } while (!u());
    this.e = token1;
    return false;
  }
  
  private final boolean w(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = d();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean x() { return cj(); }
  
  private final boolean x(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = dk();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean y() { return co(); }
  
  private final boolean y(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = di();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  private final boolean z() { return ct(); }
  
  private final boolean z(int paramInt) {
    this.g = paramInt;
    token1 = this.token;
    this.e = token1;
    this.f = token1;
    try {
      boolean bool = de();
      return true ^ bool;
    } catch (LookaheadSuccess token1) {
      return true;
    } 
  }
  
  public final void AdditiveExpression() {
    MultiplicativeExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          return;
        case 102:
        case 103:
          break;
      } 
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          F(-1);
          throw new ParseException();
        case 103:
          j = 103;
          break;
        case 102:
          j = 102;
          break;
      } 
      null = F(j);
      MultiplicativeExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final void AllocationExpression() {
    boolean bool;
    bSHAllocationExpression = new BSHAllocationExpression(23);
    this.a.c(bSHAllocationExpression);
    a(bSHAllocationExpression);
    try {
      if (r(2)) {
        F(40);
        PrimitiveType();
      } else {
        if (this.d == -1) {
          bool = dq();
        } else {
          bool = this.d;
        } 
        if (bool != 40) {
          F(-1);
          throw new ParseException();
        } 
        F(40);
        AmbiguousName();
        if (this.d == -1) {
          bool = dq();
        } else {
          bool = this.d;
        } 
        if (bool != 72) {
          if (bool != 76) {
            F(-1);
            throw new ParseException();
          } 
        } else {
          Arguments();
          if (q(2))
            Block(); 
          this.a.a(bSHAllocationExpression, true);
          b(bSHAllocationExpression);
        } 
      } 
      ArrayDimensions();
      this.a.a(bSHAllocationExpression, true);
    } catch (Throwable null) {
      this.a.b(bSHAllocationExpression);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHAllocationExpression, true);
      b(bSHAllocationExpression);
    } 
    throw throwable;
  }
  
  public final void AmbiguousName() {
    boolean bool;
    bSHAmbiguousName = new BSHAmbiguousName(12);
    this.a.c(bSHAmbiguousName);
    a(bSHAmbiguousName);
    try {
      stringBuffer = new StringBuffer((F(69)).image);
      while (g(2)) {
        F(80);
        Token token1 = F(69);
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append(".");
        stringBuffer1.append(token1.image);
        stringBuffer.append(stringBuffer1.toString());
      } 
      this.a.a(bSHAmbiguousName, true);
    } finally {
      stringBuffer = null;
    } 
    if (bool) {
      this.a.a(bSHAmbiguousName, true);
      b(bSHAmbiguousName);
    } 
    throw stringBuffer;
  }
  
  public final void AndExpression() {
    EqualityExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          return;
        case 106:
        case 107:
          break;
      } 
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          F(-1);
          throw new ParseException();
        case 107:
          j = 107;
          break;
        case 106:
          j = 106;
          break;
      } 
      null = F(j);
      EqualityExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final void ArgumentList() {
    while (true) {
      int j;
      Expression();
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      if (j != 79)
        return; 
      F(79);
    } 
  }
  
  public final void Arguments() {
    BSHArguments bSHArguments = new BSHArguments(22);
    this.a.c(bSHArguments);
    a(bSHArguments);
    try {
      F(72);
    } catch (Throwable throwable) {
      this.a.b(bSHArguments);
      bool = false;
      try {
        if (throwable instanceof RuntimeException)
          throw (RuntimeException)throwable; 
        if (throwable instanceof ParseException)
          throw (ParseException)throwable; 
        throw (Error)throwable;
      } finally {}
      if (bool) {
        this.a.a(bSHArguments, true);
        b(bSHArguments);
      } 
      throw throwable;
    } finally {
      Throwable throwable = null;
    } 
    switch (bool) {
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
        ArgumentList();
        break;
    } 
    F(73);
    this.a.a(bSHArguments, true);
    b(bSHArguments);
  }
  
  public final void ArrayDimensions() {
    boolean bool;
    bSHArrayDimensions = new BSHArrayDimensions(24);
    this.a.c(bSHArrayDimensions);
    a(bSHArrayDimensions);
    try {
      if (u(2)) {
        while (true) {
          F(76);
          Expression();
          F(77);
          bSHArrayDimensions.addDefinedDimension();
          if (s(2))
            continue; 
          break;
        } 
        while (t(2)) {
          F(76);
          F(77);
          bSHArrayDimensions.addUndefinedDimension();
        } 
      } else {
        if (this.d == -1) {
          bool = dq();
        } else {
          bool = this.d;
        } 
        if (bool != 76) {
          F(-1);
          throw new ParseException();
        } 
        do {
          F(76);
          F(77);
          bSHArrayDimensions.addUndefinedDimension();
          if (this.d == -1) {
            bool = dq();
          } else {
            bool = this.d;
          } 
        } while (bool == 76);
        ArrayInitializer();
      } 
      this.a.a(bSHArrayDimensions, true);
      return;
    } catch (Throwable null) {
      this.a.b(bSHArrayDimensions);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHArrayDimensions, true);
      b(bSHArrayDimensions);
    } 
    throw throwable;
  }
  
  public final void ArrayInitializer() {
    BSHArrayInitializer bSHArrayInitializer = new BSHArrayInitializer(6);
    this.a.c(bSHArrayInitializer);
    a(bSHArrayInitializer);
    try {
      F(74);
    } catch (Throwable throwable) {
      this.a.b(bSHArrayInitializer);
      j = 0;
      try {
        if (throwable instanceof RuntimeException)
          throw (RuntimeException)throwable; 
        if (throwable instanceof ParseException)
          throw (ParseException)throwable; 
        throw (Error)throwable;
      } finally {}
      if (j) {
        this.a.a(bSHArrayInitializer, true);
        b(bSHArrayInitializer);
      } 
      throw throwable;
    } finally {
      Throwable throwable = null;
    } 
    switch (j) {
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
        while (true) {
          VariableInitializer();
          if (d(2)) {
            F(79);
            continue;
          } 
          break;
        } 
      default:
        if (this.d == -1) {
          j = dq();
          break;
        } 
        j = this.d;
        break;
    } 
    if (j == 79)
      F(79); 
    F(75);
    this.a.a(bSHArrayInitializer, true);
    b(bSHArrayInitializer);
  }
  
  public final void Assignment() {
    boolean bool;
    bSHAssignment = new BSHAssignment(13);
    this.a.c(bSHAssignment);
    a(bSHAssignment);
    try {
      PrimaryExpression();
      bSHAssignment.operator = AssignmentOperator();
      Expression();
      this.a.a(bSHAssignment, true);
      return;
    } catch (Throwable null) {
      this.a.b(bSHAssignment);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHAssignment, true);
      b(bSHAssignment);
    } 
    throw throwable;
  }
  
  public final int AssignmentOperator() {
    int j;
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    byte b1 = 81;
    if (j != 81) {
      b1 = 124;
      if (j != 124) {
        switch (j) {
          default:
            switch (j) {
              default:
                F(-1);
                throw new ParseException();
              case 133:
                j = 133;
                break;
              case 132:
                j = 132;
                break;
              case 131:
                j = 131;
                break;
              case 130:
                j = 130;
                break;
              case 129:
                j = 129;
                break;
              case 128:
                j = 128;
                break;
              case 127:
                j = 127;
                break;
              case 126:
                break;
            } 
            j = 126;
            break;
          case 122:
            j = 122;
            break;
          case 121:
            j = 121;
            break;
          case 120:
            j = 120;
            break;
          case 119:
            j = 119;
            break;
          case 118:
            j = 118;
            break;
        } 
        F(j);
        return (getToken(0)).kind;
      } 
    } 
    F(b1);
    return (getToken(0)).kind;
  }
  
  public final void Block() {
    boolean bool;
    bSHBlock = new BSHBlock(25);
    this.a.c(bSHBlock);
    a(bSHBlock);
    try {
      F(74);
      while (w(1))
        BlockStatement(); 
      F(75);
      this.a.a(bSHBlock, true);
      return;
    } catch (Throwable null) {
      this.a.b(bSHBlock);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHBlock, true);
      b(bSHBlock);
    } 
    throw throwable;
  }
  
  public final void BlockStatement() {
    int j;
    if (x(2147483647)) {
      ClassDeclaration();
      return;
    } 
    if (y(2147483647) || z(2147483647)) {
      MethodDeclaration();
      return;
    } 
    if (A(2147483647)) {
      TypedVariableDeclaration();
      F(78);
      return;
    } 
    if (B(1)) {
      Statement();
      return;
    } 
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    if (j != 34)
      if (j != 42) {
        if (j != 48) {
          if (j != 68) {
            F(-1);
            throw new ParseException();
          } 
          FormalComment();
          return;
        } 
      } else {
        PackageDeclaration();
        return;
      }  
    ImportDeclaration();
  }
  
  public final boolean BooleanLiteral() {
    int j;
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    if (j != 26) {
      if (j != 55) {
        F(-1);
        throw new ParseException();
      } 
      F(55);
      return true;
    } 
    F(26);
    return false;
  }
  
  public final void BreakStatement() {
    Throwable throwable;
    BSHReturnStatement bSHReturnStatement = new BSHReturnStatement(35);
    this.a.c(bSHReturnStatement);
    a(bSHReturnStatement);
    try {
    
    } finally {
      bool = true;
      if (bool) {
        this.a.a(bSHReturnStatement, true);
        b(bSHReturnStatement);
      } 
    } 
    if (bool == 69)
      F(69); 
    F(78);
    this.a.a(bSHReturnStatement, true);
    bool = false;
    try {
      b(bSHReturnStatement);
      bSHReturnStatement.kind = 12;
      return;
    } finally {}
    if (bool) {
      this.a.a(bSHReturnStatement, true);
      b(bSHReturnStatement);
    } 
    throw throwable;
  }
  
  public final void CastExpression() {
    boolean bool;
    bSHCastExpression = new BSHCastExpression(17);
    this.a.c(bSHCastExpression);
    a(bSHCastExpression);
    try {
      if (m(2147483647)) {
        F(72);
        Type();
        F(73);
        UnaryExpression();
      } else {
        if (this.d == -1) {
          bool = dq();
        } else {
          bool = this.d;
        } 
        if (bool != 72) {
          F(-1);
          throw new ParseException();
        } 
        F(72);
        Type();
        F(73);
        UnaryExpressionNotPlusMinus();
      } 
      this.a.a(bSHCastExpression, true);
      return;
    } catch (Throwable null) {
      this.a.b(bSHCastExpression);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHCastExpression, true);
      b(bSHCastExpression);
    } 
    throw throwable;
  }
  
  public final void CastLookahead() {
    int j;
    if (j(2)) {
      F(72);
      PrimitiveType();
      return;
    } 
    if (k(2147483647)) {
      F(72);
      AmbiguousName();
      F(76);
      j = 77;
    } else {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      if (j != 72) {
        F(-1);
        throw new ParseException();
      } 
      F(72);
      AmbiguousName();
      F(73);
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          F(-1);
          throw new ParseException();
        case 87:
          j = 87;
          F(j);
          return;
        case 86:
          j = 86;
          F(j);
          return;
        case 72:
          F(72);
          return;
        case 69:
          j = 69;
          F(j);
          return;
        case 40:
          j = 40;
          F(j);
          return;
        case 26:
        case 41:
        case 55:
        case 57:
        case 60:
        case 64:
        case 66:
        case 67:
          break;
      } 
      Literal();
      return;
    } 
    F(j);
  }
  
  public final void ClassDeclaration() { // Byte code:
    //   0: new bsh/BSHClassDeclaration
    //   3: dup
    //   4: iconst_1
    //   5: invokespecial <init> : (I)V
    //   8: astore #4
    //   10: aload_0
    //   11: getfield a : Lbsh/JJTParserState;
    //   14: aload #4
    //   16: invokevirtual c : (Lbsh/Node;)V
    //   19: aload_0
    //   20: aload #4
    //   22: invokevirtual a : (Lbsh/Node;)V
    //   25: iconst_0
    //   26: istore_2
    //   27: aload_0
    //   28: iconst_0
    //   29: iconst_0
    //   30: invokevirtual Modifiers : (IZ)Lbsh/Modifiers;
    //   33: astore_3
    //   34: aload_0
    //   35: getfield d : I
    //   38: iconst_m1
    //   39: if_icmpne -> 50
    //   42: aload_0
    //   43: invokespecial dq : ()I
    //   46: istore_1
    //   47: goto -> 55
    //   50: aload_0
    //   51: getfield d : I
    //   54: istore_1
    //   55: iload_1
    //   56: bipush #13
    //   58: if_icmpeq -> 97
    //   61: iload_1
    //   62: bipush #37
    //   64: if_icmpeq -> 81
    //   67: aload_0
    //   68: iconst_m1
    //   69: invokespecial F : (I)Lbsh/Token;
    //   72: pop
    //   73: new bsh/ParseException
    //   76: dup
    //   77: invokespecial <init> : ()V
    //   80: athrow
    //   81: aload_0
    //   82: bipush #37
    //   84: invokespecial F : (I)Lbsh/Token;
    //   87: pop
    //   88: aload #4
    //   90: iconst_1
    //   91: putfield e : Z
    //   94: goto -> 104
    //   97: aload_0
    //   98: bipush #13
    //   100: invokespecial F : (I)Lbsh/Token;
    //   103: pop
    //   104: aload_0
    //   105: bipush #69
    //   107: invokespecial F : (I)Lbsh/Token;
    //   110: astore #5
    //   112: aload_0
    //   113: getfield d : I
    //   116: iconst_m1
    //   117: if_icmpne -> 128
    //   120: aload_0
    //   121: invokespecial dq : ()I
    //   124: istore_1
    //   125: goto -> 329
    //   128: aload_0
    //   129: getfield d : I
    //   132: istore_1
    //   133: goto -> 329
    //   136: aload_0
    //   137: bipush #25
    //   139: invokespecial F : (I)Lbsh/Token;
    //   142: pop
    //   143: aload_0
    //   144: invokevirtual AmbiguousName : ()V
    //   147: aload #4
    //   149: iconst_1
    //   150: putfield d : Z
    //   153: aload_0
    //   154: getfield d : I
    //   157: iconst_m1
    //   158: if_icmpne -> 169
    //   161: aload_0
    //   162: invokespecial dq : ()I
    //   165: istore_1
    //   166: goto -> 338
    //   169: aload_0
    //   170: getfield d : I
    //   173: istore_1
    //   174: goto -> 338
    //   177: aload_0
    //   178: bipush #33
    //   180: invokespecial F : (I)Lbsh/Token;
    //   183: pop
    //   184: aload #4
    //   186: aload_0
    //   187: invokevirtual NameList : ()I
    //   190: putfield c : I
    //   193: aload_0
    //   194: invokevirtual Block : ()V
    //   197: aload_0
    //   198: getfield a : Lbsh/JJTParserState;
    //   201: aload #4
    //   203: iconst_1
    //   204: invokevirtual a : (Lbsh/Node;Z)V
    //   207: aload_0
    //   208: aload #4
    //   210: invokevirtual b : (Lbsh/Node;)V
    //   213: aload #4
    //   215: aload_3
    //   216: putfield b : Lbsh/Modifiers;
    //   219: aload #4
    //   221: aload #5
    //   223: getfield image : Ljava/lang/String;
    //   226: putfield a : Ljava/lang/String;
    //   229: return
    //   230: astore_3
    //   231: iconst_0
    //   232: istore_1
    //   233: goto -> 307
    //   236: astore_3
    //   237: iconst_0
    //   238: istore_1
    //   239: goto -> 251
    //   242: astore_3
    //   243: iconst_1
    //   244: istore_1
    //   245: goto -> 307
    //   248: astore_3
    //   249: iconst_1
    //   250: istore_1
    //   251: iload_1
    //   252: ifeq -> 269
    //   255: aload_0
    //   256: getfield a : Lbsh/JJTParserState;
    //   259: aload #4
    //   261: invokevirtual b : (Lbsh/Node;)V
    //   264: iload_2
    //   265: istore_1
    //   266: goto -> 277
    //   269: aload_0
    //   270: getfield a : Lbsh/JJTParserState;
    //   273: invokevirtual c : ()Lbsh/Node;
    //   276: pop
    //   277: aload_3
    //   278: instanceof java/lang/RuntimeException
    //   281: ifeq -> 289
    //   284: aload_3
    //   285: checkcast java/lang/RuntimeException
    //   288: athrow
    //   289: aload_3
    //   290: instanceof bsh/ParseException
    //   293: ifeq -> 301
    //   296: aload_3
    //   297: checkcast bsh/ParseException
    //   300: athrow
    //   301: aload_3
    //   302: checkcast java/lang/Error
    //   305: athrow
    //   306: astore_3
    //   307: iload_1
    //   308: ifeq -> 327
    //   311: aload_0
    //   312: getfield a : Lbsh/JJTParserState;
    //   315: aload #4
    //   317: iconst_1
    //   318: invokevirtual a : (Lbsh/Node;Z)V
    //   321: aload_0
    //   322: aload #4
    //   324: invokevirtual b : (Lbsh/Node;)V
    //   327: aload_3
    //   328: athrow
    //   329: iload_1
    //   330: bipush #25
    //   332: if_icmpeq -> 136
    //   335: goto -> 153
    //   338: iload_1
    //   339: bipush #33
    //   341: if_icmpeq -> 177
    //   344: goto -> 193
    //   347: astore_3
    //   348: goto -> 307
    // Exception table:
    //   from	to	target	type
    //   27	47	248	java/lang/Throwable
    //   27	47	242	finally
    //   50	55	248	java/lang/Throwable
    //   50	55	242	finally
    //   67	81	248	java/lang/Throwable
    //   67	81	242	finally
    //   81	94	248	java/lang/Throwable
    //   81	94	242	finally
    //   97	104	248	java/lang/Throwable
    //   97	104	242	finally
    //   104	125	248	java/lang/Throwable
    //   104	125	242	finally
    //   128	133	248	java/lang/Throwable
    //   128	133	242	finally
    //   136	153	248	java/lang/Throwable
    //   136	153	242	finally
    //   153	166	248	java/lang/Throwable
    //   153	166	242	finally
    //   169	174	248	java/lang/Throwable
    //   169	174	242	finally
    //   177	193	248	java/lang/Throwable
    //   177	193	242	finally
    //   193	207	248	java/lang/Throwable
    //   193	207	242	finally
    //   207	229	236	java/lang/Throwable
    //   207	229	230	finally
    //   255	264	347	finally
    //   269	277	347	finally
    //   277	289	306	finally
    //   289	301	306	finally
    //   301	306	306	finally }
  
  public final void ConditionalAndExpression() {
    InclusiveOrExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          return;
        case 98:
        case 99:
          break;
      } 
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          F(-1);
          throw new ParseException();
        case 99:
          j = 99;
          break;
        case 98:
          j = 98;
          break;
      } 
      null = F(j);
      InclusiveOrExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final void ConditionalExpression() {
    Token token1;
    ConditionalOrExpression();
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    if (j != 88)
      return; 
    F(88);
    Expression();
    F(89);
    BSHTernaryExpression bSHTernaryExpression = new BSHTernaryExpression(14);
    int k = 1;
    this.a.c(bSHTernaryExpression);
    a(bSHTernaryExpression);
    int j = k;
    try {
      ConditionalExpression();
      this.a.a(bSHTernaryExpression, 3);
      b(bSHTernaryExpression);
      return;
    } catch (Throwable null) {
      j = k;
      this.a.b(bSHTernaryExpression);
      k = 0;
      j = k;
      if (token1 instanceof RuntimeException) {
        j = k;
        throw (RuntimeException)token1;
      } 
      j = k;
      if (token1 instanceof ParseException) {
        j = k;
        throw (ParseException)token1;
      } 
      j = k;
      throw (Error)token1;
    } finally {}
    if (j != 0) {
      this.a.a(bSHTernaryExpression, 3);
      b(bSHTernaryExpression);
    } 
    throw token1;
  }
  
  public final void ConditionalOrExpression() {
    ConditionalAndExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          return;
        case 96:
        case 97:
          break;
      } 
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          F(-1);
          throw new ParseException();
        case 97:
          j = 97;
          break;
        case 96:
          j = 96;
          break;
      } 
      null = F(j);
      ConditionalAndExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final void ContinueStatement() {
    Token token1;
    BSHReturnStatement bSHReturnStatement = new BSHReturnStatement(35);
    this.a.c(bSHReturnStatement);
    a(bSHReturnStatement);
    try {
    
    } finally {
      bool = true;
      if (bool) {
        this.a.a(bSHReturnStatement, true);
        b(bSHReturnStatement);
      } 
    } 
    if (bool == 69)
      F(69); 
    F(78);
    this.a.a(bSHReturnStatement, true);
    bool = false;
    try {
      b(bSHReturnStatement);
      bSHReturnStatement.kind = 19;
      return;
    } finally {}
    if (bool) {
      this.a.a(bSHReturnStatement, true);
      b(bSHReturnStatement);
    } 
    throw token1;
  }
  
  public final void DoStatement() { // Byte code:
    //   0: new bsh/BSHWhileStatement
    //   3: dup
    //   4: bipush #30
    //   6: invokespecial <init> : (I)V
    //   9: astore #5
    //   11: aload_0
    //   12: getfield a : Lbsh/JJTParserState;
    //   15: aload #5
    //   17: invokevirtual c : (Lbsh/Node;)V
    //   20: aload_0
    //   21: aload #5
    //   23: invokevirtual a : (Lbsh/Node;)V
    //   26: iconst_0
    //   27: istore_3
    //   28: iconst_0
    //   29: istore_2
    //   30: aload_0
    //   31: bipush #21
    //   33: invokespecial F : (I)Lbsh/Token;
    //   36: pop
    //   37: aload_0
    //   38: invokevirtual Statement : ()V
    //   41: aload_0
    //   42: bipush #59
    //   44: invokespecial F : (I)Lbsh/Token;
    //   47: pop
    //   48: aload_0
    //   49: bipush #72
    //   51: invokespecial F : (I)Lbsh/Token;
    //   54: pop
    //   55: aload_0
    //   56: invokevirtual Expression : ()V
    //   59: aload_0
    //   60: bipush #73
    //   62: invokespecial F : (I)Lbsh/Token;
    //   65: pop
    //   66: aload_0
    //   67: bipush #78
    //   69: invokespecial F : (I)Lbsh/Token;
    //   72: pop
    //   73: aload_0
    //   74: getfield a : Lbsh/JJTParserState;
    //   77: aload #5
    //   79: iconst_1
    //   80: invokevirtual a : (Lbsh/Node;Z)V
    //   83: iload_3
    //   84: istore_1
    //   85: aload_0
    //   86: aload #5
    //   88: invokevirtual b : (Lbsh/Node;)V
    //   91: iload_3
    //   92: istore_1
    //   93: aload #5
    //   95: iconst_1
    //   96: putfield isDoStatement : Z
    //   99: return
    //   100: astore #4
    //   102: iconst_0
    //   103: istore_1
    //   104: goto -> 118
    //   107: astore #4
    //   109: iconst_1
    //   110: istore_1
    //   111: goto -> 190
    //   114: astore #4
    //   116: iconst_1
    //   117: istore_1
    //   118: iload_1
    //   119: ifeq -> 134
    //   122: aload_0
    //   123: getfield a : Lbsh/JJTParserState;
    //   126: aload #5
    //   128: invokevirtual b : (Lbsh/Node;)V
    //   131: goto -> 144
    //   134: aload_0
    //   135: getfield a : Lbsh/JJTParserState;
    //   138: invokevirtual c : ()Lbsh/Node;
    //   141: pop
    //   142: iload_1
    //   143: istore_2
    //   144: iload_2
    //   145: istore_1
    //   146: aload #4
    //   148: instanceof java/lang/RuntimeException
    //   151: ifeq -> 162
    //   154: iload_2
    //   155: istore_1
    //   156: aload #4
    //   158: checkcast java/lang/RuntimeException
    //   161: athrow
    //   162: iload_2
    //   163: istore_1
    //   164: aload #4
    //   166: instanceof bsh/ParseException
    //   169: ifeq -> 180
    //   172: iload_2
    //   173: istore_1
    //   174: aload #4
    //   176: checkcast bsh/ParseException
    //   179: athrow
    //   180: iload_2
    //   181: istore_1
    //   182: aload #4
    //   184: checkcast java/lang/Error
    //   187: athrow
    //   188: astore #4
    //   190: iload_1
    //   191: ifeq -> 210
    //   194: aload_0
    //   195: getfield a : Lbsh/JJTParserState;
    //   198: aload #5
    //   200: iconst_1
    //   201: invokevirtual a : (Lbsh/Node;Z)V
    //   204: aload_0
    //   205: aload #5
    //   207: invokevirtual b : (Lbsh/Node;)V
    //   210: aload #4
    //   212: athrow
    //   213: astore #4
    //   215: goto -> 190
    // Exception table:
    //   from	to	target	type
    //   30	83	114	java/lang/Throwable
    //   30	83	107	finally
    //   85	91	100	java/lang/Throwable
    //   85	91	188	finally
    //   93	99	100	java/lang/Throwable
    //   93	99	188	finally
    //   122	131	213	finally
    //   134	142	213	finally
    //   146	154	188	finally
    //   156	162	188	finally
    //   164	172	188	finally
    //   174	180	188	finally
    //   182	188	188	finally }
  
  public final void EmptyStatement() { F(78); }
  
  public final void EnhancedForStatement() { // Byte code:
    //   0: new bsh/BSHEnhancedForStatement
    //   3: dup
    //   4: bipush #32
    //   6: invokespecial <init> : (I)V
    //   9: astore #5
    //   11: aload_0
    //   12: getfield a : Lbsh/JJTParserState;
    //   15: aload #5
    //   17: invokevirtual c : (Lbsh/Node;)V
    //   20: aload_0
    //   21: aload #5
    //   23: invokevirtual a : (Lbsh/Node;)V
    //   26: iconst_0
    //   27: istore_3
    //   28: iconst_0
    //   29: istore_2
    //   30: aload_0
    //   31: iconst_4
    //   32: invokespecial D : (I)Z
    //   35: ifeq -> 126
    //   38: aload_0
    //   39: bipush #30
    //   41: invokespecial F : (I)Lbsh/Token;
    //   44: pop
    //   45: aload_0
    //   46: bipush #72
    //   48: invokespecial F : (I)Lbsh/Token;
    //   51: pop
    //   52: aload_0
    //   53: bipush #69
    //   55: invokespecial F : (I)Lbsh/Token;
    //   58: astore #4
    //   60: aload_0
    //   61: bipush #89
    //   63: invokespecial F : (I)Lbsh/Token;
    //   66: pop
    //   67: aload_0
    //   68: invokevirtual Expression : ()V
    //   71: aload_0
    //   72: bipush #73
    //   74: invokespecial F : (I)Lbsh/Token;
    //   77: pop
    //   78: aload_0
    //   79: invokevirtual Statement : ()V
    //   82: aload_0
    //   83: getfield a : Lbsh/JJTParserState;
    //   86: aload #5
    //   88: iconst_1
    //   89: invokevirtual a : (Lbsh/Node;Z)V
    //   92: iload_3
    //   93: istore_1
    //   94: aload_0
    //   95: aload #5
    //   97: invokevirtual b : (Lbsh/Node;)V
    //   100: iload_3
    //   101: istore_1
    //   102: aload #4
    //   104: getfield image : Ljava/lang/String;
    //   107: astore #4
    //   109: iload_3
    //   110: istore_1
    //   111: aload #5
    //   113: aload #4
    //   115: putfield a : Ljava/lang/String;
    //   118: return
    //   119: astore #4
    //   121: iconst_0
    //   122: istore_1
    //   123: goto -> 256
    //   126: aload_0
    //   127: getfield d : I
    //   130: iconst_m1
    //   131: if_icmpne -> 142
    //   134: aload_0
    //   135: invokespecial dq : ()I
    //   138: istore_1
    //   139: goto -> 147
    //   142: aload_0
    //   143: getfield d : I
    //   146: istore_1
    //   147: iload_1
    //   148: bipush #30
    //   150: if_icmpeq -> 167
    //   153: aload_0
    //   154: iconst_m1
    //   155: invokespecial F : (I)Lbsh/Token;
    //   158: pop
    //   159: new bsh/ParseException
    //   162: dup
    //   163: invokespecial <init> : ()V
    //   166: athrow
    //   167: aload_0
    //   168: bipush #30
    //   170: invokespecial F : (I)Lbsh/Token;
    //   173: pop
    //   174: aload_0
    //   175: bipush #72
    //   177: invokespecial F : (I)Lbsh/Token;
    //   180: pop
    //   181: aload_0
    //   182: invokevirtual Type : ()V
    //   185: aload_0
    //   186: bipush #69
    //   188: invokespecial F : (I)Lbsh/Token;
    //   191: astore #4
    //   193: aload_0
    //   194: bipush #89
    //   196: invokespecial F : (I)Lbsh/Token;
    //   199: pop
    //   200: aload_0
    //   201: invokevirtual Expression : ()V
    //   204: aload_0
    //   205: bipush #73
    //   207: invokespecial F : (I)Lbsh/Token;
    //   210: pop
    //   211: aload_0
    //   212: invokevirtual Statement : ()V
    //   215: aload_0
    //   216: getfield a : Lbsh/JJTParserState;
    //   219: aload #5
    //   221: iconst_1
    //   222: invokevirtual a : (Lbsh/Node;Z)V
    //   225: iload_3
    //   226: istore_1
    //   227: aload_0
    //   228: aload #5
    //   230: invokevirtual b : (Lbsh/Node;)V
    //   233: iload_3
    //   234: istore_1
    //   235: aload #4
    //   237: getfield image : Ljava/lang/String;
    //   240: astore #4
    //   242: goto -> 109
    //   245: astore #4
    //   247: iconst_1
    //   248: istore_1
    //   249: goto -> 328
    //   252: astore #4
    //   254: iconst_1
    //   255: istore_1
    //   256: iload_1
    //   257: ifeq -> 272
    //   260: aload_0
    //   261: getfield a : Lbsh/JJTParserState;
    //   264: aload #5
    //   266: invokevirtual b : (Lbsh/Node;)V
    //   269: goto -> 282
    //   272: aload_0
    //   273: getfield a : Lbsh/JJTParserState;
    //   276: invokevirtual c : ()Lbsh/Node;
    //   279: pop
    //   280: iload_1
    //   281: istore_2
    //   282: iload_2
    //   283: istore_1
    //   284: aload #4
    //   286: instanceof java/lang/RuntimeException
    //   289: ifeq -> 300
    //   292: iload_2
    //   293: istore_1
    //   294: aload #4
    //   296: checkcast java/lang/RuntimeException
    //   299: athrow
    //   300: iload_2
    //   301: istore_1
    //   302: aload #4
    //   304: instanceof bsh/ParseException
    //   307: ifeq -> 318
    //   310: iload_2
    //   311: istore_1
    //   312: aload #4
    //   314: checkcast bsh/ParseException
    //   317: athrow
    //   318: iload_2
    //   319: istore_1
    //   320: aload #4
    //   322: checkcast java/lang/Error
    //   325: athrow
    //   326: astore #4
    //   328: iload_1
    //   329: ifeq -> 348
    //   332: aload_0
    //   333: getfield a : Lbsh/JJTParserState;
    //   336: aload #5
    //   338: iconst_1
    //   339: invokevirtual a : (Lbsh/Node;Z)V
    //   342: aload_0
    //   343: aload #5
    //   345: invokevirtual b : (Lbsh/Node;)V
    //   348: aload #4
    //   350: athrow
    //   351: astore #4
    //   353: goto -> 328
    // Exception table:
    //   from	to	target	type
    //   30	92	252	java/lang/Throwable
    //   30	92	245	finally
    //   94	100	119	java/lang/Throwable
    //   94	100	326	finally
    //   102	109	119	java/lang/Throwable
    //   102	109	326	finally
    //   111	118	119	java/lang/Throwable
    //   111	118	326	finally
    //   126	139	252	java/lang/Throwable
    //   126	139	245	finally
    //   142	147	252	java/lang/Throwable
    //   142	147	245	finally
    //   153	167	252	java/lang/Throwable
    //   153	167	245	finally
    //   167	225	252	java/lang/Throwable
    //   167	225	245	finally
    //   227	233	119	java/lang/Throwable
    //   227	233	326	finally
    //   235	242	119	java/lang/Throwable
    //   235	242	326	finally
    //   260	269	351	finally
    //   272	280	351	finally
    //   284	292	326	finally
    //   294	300	326	finally
    //   302	310	326	finally
    //   312	318	326	finally
    //   320	326	326	finally }
  
  public final void EqualityExpression() {
    InstanceOfExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      if (j != 90 && j != 95)
        return; 
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      if (j != 90) {
        if (j != 95) {
          F(-1);
          throw new ParseException();
        } 
        null = F(95);
      } else {
        null = F(90);
      } 
      InstanceOfExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final void ExclusiveOrExpression() {
    AndExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      if (j != 110)
        return; 
      null = F(110);
      AndExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final void Expression() {
    int j;
    if (h(2147483647)) {
      Assignment();
      return;
    } 
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    switch (j) {
      default:
        F(-1);
        throw new ParseException();
      case 11:
      case 14:
      case 17:
      case 22:
      case 26:
      case 29:
      case 36:
      case 38:
      case 40:
      case 41:
      case 47:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
      case 69:
      case 72:
      case 86:
      case 87:
      case 100:
      case 101:
      case 102:
      case 103:
        break;
    } 
    ConditionalExpression();
  }
  
  public final void ForInit() {
    int j;
    if (E(2147483647)) {
      TypedVariableDeclaration();
      return;
    } 
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    switch (j) {
      default:
        F(-1);
        throw new ParseException();
      case 11:
      case 14:
      case 17:
      case 22:
      case 26:
      case 29:
      case 36:
      case 38:
      case 40:
      case 41:
      case 47:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
      case 69:
      case 72:
      case 86:
      case 87:
      case 100:
      case 101:
      case 102:
      case 103:
        break;
    } 
    StatementExpressionList();
  }
  
  public final void ForStatement() {
    BSHForStatement bSHForStatement = new BSHForStatement(31);
    this.a.c(bSHForStatement);
    a(bSHForStatement);
    try {
      F(30);
      F(72);
    } catch (Throwable throwable) {
      this.a.b(bSHForStatement);
      j = 0;
      try {
        if (throwable instanceof RuntimeException)
          throw (RuntimeException)throwable; 
        if (throwable instanceof ParseException)
          throw (ParseException)throwable; 
        throw (Error)throwable;
      } finally {}
      if (j) {
        this.a.a(bSHForStatement, true);
        b(bSHForStatement);
      } 
      throw throwable;
    } finally {
      Throwable throwable = null;
    } 
    switch (j) {
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
      case true:
        ForInit();
        bSHForStatement.hasForInit = true;
      default:
        F(78);
        if (this.d == -1) {
          j = dq();
          break;
        } 
        j = this.d;
        break;
    } 
    switch (j) {
      case 11:
      case 14:
      case 17:
      case 22:
      case 26:
      case 29:
      case 36:
      case 38:
      case 40:
      case 41:
      case 47:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
      case 69:
      case 72:
      case 86:
      case 87:
      case 100:
      case 101:
      case 102:
      case 103:
        Expression();
        bSHForStatement.hasExpression = true;
      default:
        F(78);
        if (this.d == -1) {
          j = dq();
          break;
        } 
        j = this.d;
        break;
    } 
    switch (j) {
      case 11:
      case 14:
      case 17:
      case 22:
      case 26:
      case 29:
      case 36:
      case 38:
      case 40:
      case 41:
      case 47:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
      case 69:
      case 72:
      case 86:
      case 87:
      case 100:
      case 101:
      case 102:
      case 103:
        ForUpdate();
        bSHForStatement.hasForUpdate = true;
        break;
    } 
    F(73);
    Statement();
    this.a.a(bSHForStatement, true);
    b(bSHForStatement);
  }
  
  public final void ForUpdate() { StatementExpressionList(); }
  
  public final void FormalComment() {
    bSHFormalComment = new BSHFormalComment(26);
    this.a.c(bSHFormalComment);
    a(bSHFormalComment);
    byte b2 = 1;
    byte b1 = b2;
    try {
      token1 = F(68);
      b1 = b2;
      this.a.a(bSHFormalComment, this.b);
      b2 = 0;
      b1 = b2;
      b(bSHFormalComment);
      b1 = b2;
      return;
    } finally {
      if (b1 != 0) {
        this.a.a(bSHFormalComment, this.b);
        b(bSHFormalComment);
      } 
    } 
  }
  
  public final void FormalParameter() { // Byte code:
    //   0: new bsh/BSHFormalParameter
    //   3: dup
    //   4: bipush #8
    //   6: invokespecial <init> : (I)V
    //   9: astore #5
    //   11: aload_0
    //   12: getfield a : Lbsh/JJTParserState;
    //   15: aload #5
    //   17: invokevirtual c : (Lbsh/Node;)V
    //   20: aload_0
    //   21: aload #5
    //   23: invokevirtual a : (Lbsh/Node;)V
    //   26: iconst_0
    //   27: istore_3
    //   28: iconst_0
    //   29: istore_2
    //   30: aload_0
    //   31: iconst_2
    //   32: invokespecial e : (I)Z
    //   35: ifeq -> 94
    //   38: aload_0
    //   39: invokevirtual Type : ()V
    //   42: aload_0
    //   43: bipush #69
    //   45: invokespecial F : (I)Lbsh/Token;
    //   48: astore #4
    //   50: aload_0
    //   51: getfield a : Lbsh/JJTParserState;
    //   54: aload #5
    //   56: iconst_1
    //   57: invokevirtual a : (Lbsh/Node;Z)V
    //   60: iload_3
    //   61: istore_1
    //   62: aload_0
    //   63: aload #5
    //   65: invokevirtual b : (Lbsh/Node;)V
    //   68: iload_3
    //   69: istore_1
    //   70: aload #4
    //   72: getfield image : Ljava/lang/String;
    //   75: astore #4
    //   77: iload_3
    //   78: istore_1
    //   79: aload #5
    //   81: aload #4
    //   83: putfield name : Ljava/lang/String;
    //   86: return
    //   87: astore #4
    //   89: iconst_0
    //   90: istore_1
    //   91: goto -> 184
    //   94: aload_0
    //   95: getfield d : I
    //   98: iconst_m1
    //   99: if_icmpne -> 110
    //   102: aload_0
    //   103: invokespecial dq : ()I
    //   106: istore_1
    //   107: goto -> 115
    //   110: aload_0
    //   111: getfield d : I
    //   114: istore_1
    //   115: iload_1
    //   116: bipush #69
    //   118: if_icmpeq -> 135
    //   121: aload_0
    //   122: iconst_m1
    //   123: invokespecial F : (I)Lbsh/Token;
    //   126: pop
    //   127: new bsh/ParseException
    //   130: dup
    //   131: invokespecial <init> : ()V
    //   134: athrow
    //   135: aload_0
    //   136: bipush #69
    //   138: invokespecial F : (I)Lbsh/Token;
    //   141: astore #4
    //   143: aload_0
    //   144: getfield a : Lbsh/JJTParserState;
    //   147: aload #5
    //   149: iconst_1
    //   150: invokevirtual a : (Lbsh/Node;Z)V
    //   153: iload_3
    //   154: istore_1
    //   155: aload_0
    //   156: aload #5
    //   158: invokevirtual b : (Lbsh/Node;)V
    //   161: iload_3
    //   162: istore_1
    //   163: aload #4
    //   165: getfield image : Ljava/lang/String;
    //   168: astore #4
    //   170: goto -> 77
    //   173: astore #4
    //   175: iconst_1
    //   176: istore_1
    //   177: goto -> 256
    //   180: astore #4
    //   182: iconst_1
    //   183: istore_1
    //   184: iload_1
    //   185: ifeq -> 200
    //   188: aload_0
    //   189: getfield a : Lbsh/JJTParserState;
    //   192: aload #5
    //   194: invokevirtual b : (Lbsh/Node;)V
    //   197: goto -> 210
    //   200: aload_0
    //   201: getfield a : Lbsh/JJTParserState;
    //   204: invokevirtual c : ()Lbsh/Node;
    //   207: pop
    //   208: iload_1
    //   209: istore_2
    //   210: iload_2
    //   211: istore_1
    //   212: aload #4
    //   214: instanceof java/lang/RuntimeException
    //   217: ifeq -> 228
    //   220: iload_2
    //   221: istore_1
    //   222: aload #4
    //   224: checkcast java/lang/RuntimeException
    //   227: athrow
    //   228: iload_2
    //   229: istore_1
    //   230: aload #4
    //   232: instanceof bsh/ParseException
    //   235: ifeq -> 246
    //   238: iload_2
    //   239: istore_1
    //   240: aload #4
    //   242: checkcast bsh/ParseException
    //   245: athrow
    //   246: iload_2
    //   247: istore_1
    //   248: aload #4
    //   250: checkcast java/lang/Error
    //   253: athrow
    //   254: astore #4
    //   256: iload_1
    //   257: ifeq -> 276
    //   260: aload_0
    //   261: getfield a : Lbsh/JJTParserState;
    //   264: aload #5
    //   266: iconst_1
    //   267: invokevirtual a : (Lbsh/Node;Z)V
    //   270: aload_0
    //   271: aload #5
    //   273: invokevirtual b : (Lbsh/Node;)V
    //   276: aload #4
    //   278: athrow
    //   279: astore #4
    //   281: goto -> 256
    // Exception table:
    //   from	to	target	type
    //   30	60	180	java/lang/Throwable
    //   30	60	173	finally
    //   62	68	87	java/lang/Throwable
    //   62	68	254	finally
    //   70	77	87	java/lang/Throwable
    //   70	77	254	finally
    //   79	86	87	java/lang/Throwable
    //   79	86	254	finally
    //   94	107	180	java/lang/Throwable
    //   94	107	173	finally
    //   110	115	180	java/lang/Throwable
    //   110	115	173	finally
    //   121	135	180	java/lang/Throwable
    //   121	135	173	finally
    //   135	153	180	java/lang/Throwable
    //   135	153	173	finally
    //   155	161	87	java/lang/Throwable
    //   155	161	254	finally
    //   163	170	87	java/lang/Throwable
    //   163	170	254	finally
    //   188	197	279	finally
    //   200	208	279	finally
    //   212	220	254	finally
    //   222	228	254	finally
    //   230	238	254	finally
    //   240	246	254	finally
    //   248	254	254	finally }
  
  public final void FormalParameters() {
    BSHFormalParameters bSHFormalParameters = new BSHFormalParameters(7);
    this.a.c(bSHFormalParameters);
    a(bSHFormalParameters);
    try {
      F(72);
    } catch (Throwable throwable) {
      this.a.b(bSHFormalParameters);
      j = 0;
      try {
        if (throwable instanceof RuntimeException)
          throw (RuntimeException)throwable; 
        if (throwable instanceof ParseException)
          throw (ParseException)throwable; 
        throw (Error)throwable;
      } finally {}
      if (j) {
        this.a.a(bSHFormalParameters, true);
        b(bSHFormalParameters);
      } 
      throw throwable;
    } finally {
      Throwable throwable = null;
    } 
    if (j == 11 || j == 14 || j == 17 || j == 22 || j == 29 || j == 36 || j == 38 || j == 47 || j == 69)
      while (true) {
        FormalParameter();
        if (this.d == -1) {
          j = dq();
        } else {
          j = this.d;
        } 
        if (j == 79) {
          F(79);
          continue;
        } 
        F(73);
        this.a.a(bSHFormalParameters, true);
        b(bSHFormalParameters);
        return;
      }  
    F(73);
    this.a.a(bSHFormalParameters, true);
    b(bSHFormalParameters);
  }
  
  public final void IfStatement() {
    BSHIfStatement bSHIfStatement = new BSHIfStatement(29);
    this.a.c(bSHIfStatement);
    a(bSHIfStatement);
    try {
      F(32);
      F(72);
      Expression();
      F(73);
      Statement();
    } catch (Throwable throwable) {
      this.a.b(bSHIfStatement);
      bool = false;
      try {
        if (throwable instanceof RuntimeException)
          throw (RuntimeException)throwable; 
        if (throwable instanceof ParseException)
          throw (ParseException)throwable; 
        throw (Error)throwable;
      } finally {}
      if (bool) {
        this.a.a(bSHIfStatement, true);
        b(bSHIfStatement);
      } 
      throw throwable;
    } finally {
      Throwable throwable = null;
    } 
    if (bool == 23) {
      F(23);
      Statement();
    } 
    this.a.a(bSHIfStatement, true);
    b(bSHIfStatement);
  }
  
  public final void ImportDeclaration() { // Byte code:
    //   0: new bsh/BSHImportDeclaration
    //   3: dup
    //   4: iconst_4
    //   5: invokespecial <init> : (I)V
    //   8: astore #6
    //   10: aload_0
    //   11: getfield a : Lbsh/JJTParserState;
    //   14: aload #6
    //   16: invokevirtual c : (Lbsh/Node;)V
    //   19: aload_0
    //   20: aload #6
    //   22: invokevirtual a : (Lbsh/Node;)V
    //   25: iconst_0
    //   26: istore_3
    //   27: iconst_0
    //   28: istore_2
    //   29: aload_0
    //   30: iconst_3
    //   31: invokespecial c : (I)Z
    //   34: ifeq -> 171
    //   37: aload_0
    //   38: getfield d : I
    //   41: iconst_m1
    //   42: if_icmpne -> 53
    //   45: aload_0
    //   46: invokespecial dq : ()I
    //   49: istore_1
    //   50: goto -> 373
    //   53: aload_0
    //   54: getfield d : I
    //   57: istore_1
    //   58: goto -> 373
    //   61: aload_0
    //   62: bipush #48
    //   64: invokespecial F : (I)Lbsh/Token;
    //   67: astore #4
    //   69: aload_0
    //   70: bipush #34
    //   72: invokespecial F : (I)Lbsh/Token;
    //   75: pop
    //   76: aload_0
    //   77: invokevirtual AmbiguousName : ()V
    //   80: aload_0
    //   81: getfield d : I
    //   84: iconst_m1
    //   85: if_icmpne -> 96
    //   88: aload_0
    //   89: invokespecial dq : ()I
    //   92: istore_1
    //   93: goto -> 388
    //   96: aload_0
    //   97: getfield d : I
    //   100: istore_1
    //   101: goto -> 388
    //   104: aload_0
    //   105: bipush #80
    //   107: invokespecial F : (I)Lbsh/Token;
    //   110: astore #5
    //   112: aload_0
    //   113: bipush #104
    //   115: invokespecial F : (I)Lbsh/Token;
    //   118: pop
    //   119: aload_0
    //   120: bipush #78
    //   122: invokespecial F : (I)Lbsh/Token;
    //   125: pop
    //   126: aload_0
    //   127: getfield a : Lbsh/JJTParserState;
    //   130: aload #6
    //   132: iconst_1
    //   133: invokevirtual a : (Lbsh/Node;Z)V
    //   136: iload_3
    //   137: istore_1
    //   138: aload_0
    //   139: aload #6
    //   141: invokevirtual b : (Lbsh/Node;)V
    //   144: aload #4
    //   146: ifnull -> 157
    //   149: iload_3
    //   150: istore_1
    //   151: aload #6
    //   153: iconst_1
    //   154: putfield staticImport : Z
    //   157: aload #5
    //   159: ifnull -> 259
    //   162: iload_3
    //   163: istore_1
    //   164: aload #6
    //   166: iconst_1
    //   167: putfield importPackage : Z
    //   170: return
    //   171: aload_0
    //   172: getfield d : I
    //   175: iconst_m1
    //   176: if_icmpne -> 187
    //   179: aload_0
    //   180: invokespecial dq : ()I
    //   183: istore_1
    //   184: goto -> 192
    //   187: aload_0
    //   188: getfield d : I
    //   191: istore_1
    //   192: iload_1
    //   193: bipush #34
    //   195: if_icmpeq -> 212
    //   198: aload_0
    //   199: iconst_m1
    //   200: invokespecial F : (I)Lbsh/Token;
    //   203: pop
    //   204: new bsh/ParseException
    //   207: dup
    //   208: invokespecial <init> : ()V
    //   211: athrow
    //   212: aload_0
    //   213: bipush #34
    //   215: invokespecial F : (I)Lbsh/Token;
    //   218: pop
    //   219: aload_0
    //   220: bipush #104
    //   222: invokespecial F : (I)Lbsh/Token;
    //   225: pop
    //   226: aload_0
    //   227: bipush #78
    //   229: invokespecial F : (I)Lbsh/Token;
    //   232: pop
    //   233: aload_0
    //   234: getfield a : Lbsh/JJTParserState;
    //   237: aload #6
    //   239: iconst_1
    //   240: invokevirtual a : (Lbsh/Node;Z)V
    //   243: iload_3
    //   244: istore_1
    //   245: aload_0
    //   246: aload #6
    //   248: invokevirtual b : (Lbsh/Node;)V
    //   251: iload_3
    //   252: istore_1
    //   253: aload #6
    //   255: iconst_1
    //   256: putfield superImport : Z
    //   259: return
    //   260: astore #4
    //   262: iconst_0
    //   263: istore_1
    //   264: goto -> 278
    //   267: astore #4
    //   269: iconst_1
    //   270: istore_1
    //   271: goto -> 350
    //   274: astore #4
    //   276: iconst_1
    //   277: istore_1
    //   278: iload_1
    //   279: ifeq -> 294
    //   282: aload_0
    //   283: getfield a : Lbsh/JJTParserState;
    //   286: aload #6
    //   288: invokevirtual b : (Lbsh/Node;)V
    //   291: goto -> 304
    //   294: aload_0
    //   295: getfield a : Lbsh/JJTParserState;
    //   298: invokevirtual c : ()Lbsh/Node;
    //   301: pop
    //   302: iload_1
    //   303: istore_2
    //   304: iload_2
    //   305: istore_1
    //   306: aload #4
    //   308: instanceof java/lang/RuntimeException
    //   311: ifeq -> 322
    //   314: iload_2
    //   315: istore_1
    //   316: aload #4
    //   318: checkcast java/lang/RuntimeException
    //   321: athrow
    //   322: iload_2
    //   323: istore_1
    //   324: aload #4
    //   326: instanceof bsh/ParseException
    //   329: ifeq -> 340
    //   332: iload_2
    //   333: istore_1
    //   334: aload #4
    //   336: checkcast bsh/ParseException
    //   339: athrow
    //   340: iload_2
    //   341: istore_1
    //   342: aload #4
    //   344: checkcast java/lang/Error
    //   347: athrow
    //   348: astore #4
    //   350: iload_1
    //   351: ifeq -> 370
    //   354: aload_0
    //   355: getfield a : Lbsh/JJTParserState;
    //   358: aload #6
    //   360: iconst_1
    //   361: invokevirtual a : (Lbsh/Node;Z)V
    //   364: aload_0
    //   365: aload #6
    //   367: invokevirtual b : (Lbsh/Node;)V
    //   370: aload #4
    //   372: athrow
    //   373: aconst_null
    //   374: astore #5
    //   376: iload_1
    //   377: bipush #48
    //   379: if_icmpeq -> 61
    //   382: aconst_null
    //   383: astore #4
    //   385: goto -> 69
    //   388: iload_1
    //   389: bipush #80
    //   391: if_icmpeq -> 104
    //   394: goto -> 119
    //   397: astore #4
    //   399: goto -> 350
    // Exception table:
    //   from	to	target	type
    //   29	50	274	java/lang/Throwable
    //   29	50	267	finally
    //   53	58	274	java/lang/Throwable
    //   53	58	267	finally
    //   61	69	274	java/lang/Throwable
    //   61	69	267	finally
    //   69	93	274	java/lang/Throwable
    //   69	93	267	finally
    //   96	101	274	java/lang/Throwable
    //   96	101	267	finally
    //   104	119	274	java/lang/Throwable
    //   104	119	267	finally
    //   119	136	274	java/lang/Throwable
    //   119	136	267	finally
    //   138	144	260	java/lang/Throwable
    //   138	144	348	finally
    //   151	157	260	java/lang/Throwable
    //   151	157	348	finally
    //   164	170	260	java/lang/Throwable
    //   164	170	348	finally
    //   171	184	274	java/lang/Throwable
    //   171	184	267	finally
    //   187	192	274	java/lang/Throwable
    //   187	192	267	finally
    //   198	212	274	java/lang/Throwable
    //   198	212	267	finally
    //   212	243	274	java/lang/Throwable
    //   212	243	267	finally
    //   245	251	260	java/lang/Throwable
    //   245	251	348	finally
    //   253	259	260	java/lang/Throwable
    //   253	259	348	finally
    //   282	291	397	finally
    //   294	302	397	finally
    //   306	314	348	finally
    //   316	322	348	finally
    //   324	332	348	finally
    //   334	340	348	finally
    //   342	348	348	finally }
  
  public final void InclusiveOrExpression() {
    ExclusiveOrExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          return;
        case 108:
        case 109:
          break;
      } 
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          F(-1);
          throw new ParseException();
        case 109:
          j = 109;
          break;
        case 108:
          j = 108;
          break;
      } 
      null = F(j);
      ExclusiveOrExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final void InstanceOfExpression() {
    RelationalExpression();
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    if (j != 35)
      return; 
    null = F(35);
    Type();
    bSHBinaryExpression = new BSHBinaryExpression(15);
    int j = 1;
    this.a.c(bSHBinaryExpression);
    a(bSHBinaryExpression);
    try {
      this.a.a(bSHBinaryExpression, 2);
      int k = 0;
      j = k;
      b(bSHBinaryExpression);
      j = k;
      return;
    } finally {
      if (j != 0) {
        this.a.a(bSHBinaryExpression, 2);
        b(bSHBinaryExpression);
      } 
    } 
  }
  
  public final void LabeledStatement() {
    F(69);
    F(89);
    Statement();
  }
  
  public final boolean Line() {
    int j;
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    if (j != 0) {
      if (a(1)) {
        BlockStatement();
        return false;
      } 
      F(-1);
      throw new ParseException();
    } 
    F(0);
    Interpreter.debug("End of File!");
    return true;
  }
  
  public final void Literal() { // Byte code:
    //   0: new bsh/BSHLiteral
    //   3: dup
    //   4: bipush #21
    //   6: invokespecial <init> : (I)V
    //   9: astore #8
    //   11: aload_0
    //   12: getfield a : Lbsh/JJTParserState;
    //   15: aload #8
    //   17: invokevirtual c : (Lbsh/Node;)V
    //   20: aload_0
    //   21: aload #8
    //   23: invokevirtual a : (Lbsh/Node;)V
    //   26: iconst_0
    //   27: istore_3
    //   28: iconst_0
    //   29: istore_2
    //   30: aload_0
    //   31: getfield d : I
    //   34: iconst_m1
    //   35: if_icmpne -> 46
    //   38: aload_0
    //   39: invokespecial dq : ()I
    //   42: istore_1
    //   43: goto -> 834
    //   46: aload_0
    //   47: getfield d : I
    //   50: istore_1
    //   51: goto -> 834
    //   54: aload_0
    //   55: iconst_m1
    //   56: invokespecial F : (I)Lbsh/Token;
    //   59: pop
    //   60: new bsh/ParseException
    //   63: dup
    //   64: invokespecial <init> : ()V
    //   67: athrow
    //   68: aload_0
    //   69: bipush #67
    //   71: invokespecial F : (I)Lbsh/Token;
    //   74: astore #6
    //   76: aload_0
    //   77: getfield a : Lbsh/JJTParserState;
    //   80: aload #8
    //   82: iconst_1
    //   83: invokevirtual a : (Lbsh/Node;Z)V
    //   86: iload_3
    //   87: istore_1
    //   88: aload_0
    //   89: aload #8
    //   91: invokevirtual b : (Lbsh/Node;)V
    //   94: iload_3
    //   95: istore_1
    //   96: aload #8
    //   98: aload #6
    //   100: getfield image : Ljava/lang/String;
    //   103: iconst_1
    //   104: aload #6
    //   106: getfield image : Ljava/lang/String;
    //   109: invokevirtual length : ()I
    //   112: iconst_1
    //   113: isub
    //   114: invokevirtual substring : (II)Ljava/lang/String;
    //   117: invokevirtual a : (Ljava/lang/String;)V
    //   120: return
    //   121: iload_3
    //   122: istore_1
    //   123: new java/lang/StringBuffer
    //   126: dup
    //   127: invokespecial <init> : ()V
    //   130: astore #7
    //   132: iload_3
    //   133: istore_1
    //   134: aload #7
    //   136: ldc_w 'Error parsing string: '
    //   139: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   142: pop
    //   143: iload_3
    //   144: istore_1
    //   145: aload #7
    //   147: aload #6
    //   149: getfield image : Ljava/lang/String;
    //   152: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   155: pop
    //   156: iload_3
    //   157: istore_1
    //   158: aload_0
    //   159: aload #7
    //   161: invokevirtual toString : ()Ljava/lang/String;
    //   164: invokevirtual a : (Ljava/lang/String;)Lbsh/ParseException;
    //   167: athrow
    //   168: aload_0
    //   169: bipush #66
    //   171: invokespecial F : (I)Lbsh/Token;
    //   174: astore #6
    //   176: aload_0
    //   177: getfield a : Lbsh/JJTParserState;
    //   180: aload #8
    //   182: iconst_1
    //   183: invokevirtual a : (Lbsh/Node;Z)V
    //   186: iload_3
    //   187: istore_1
    //   188: aload_0
    //   189: aload #8
    //   191: invokevirtual b : (Lbsh/Node;)V
    //   194: iload_3
    //   195: istore_1
    //   196: aload #8
    //   198: aload #6
    //   200: getfield image : Ljava/lang/String;
    //   203: iconst_1
    //   204: aload #6
    //   206: getfield image : Ljava/lang/String;
    //   209: invokevirtual length : ()I
    //   212: iconst_1
    //   213: isub
    //   214: invokevirtual substring : (II)Ljava/lang/String;
    //   217: invokevirtual charSetup : (Ljava/lang/String;)V
    //   220: return
    //   221: iload_3
    //   222: istore_1
    //   223: new java/lang/StringBuffer
    //   226: dup
    //   227: invokespecial <init> : ()V
    //   230: astore #7
    //   232: iload_3
    //   233: istore_1
    //   234: aload #7
    //   236: ldc_w 'Error parsing character: '
    //   239: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   242: pop
    //   243: iload_3
    //   244: istore_1
    //   245: aload #7
    //   247: aload #6
    //   249: getfield image : Ljava/lang/String;
    //   252: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   255: pop
    //   256: iload_3
    //   257: istore_1
    //   258: aload_0
    //   259: aload #7
    //   261: invokevirtual toString : ()Ljava/lang/String;
    //   264: invokevirtual a : (Ljava/lang/String;)Lbsh/ParseException;
    //   267: athrow
    //   268: aload_0
    //   269: bipush #64
    //   271: invokespecial F : (I)Lbsh/Token;
    //   274: astore #6
    //   276: aload_0
    //   277: getfield a : Lbsh/JJTParserState;
    //   280: aload #8
    //   282: iconst_1
    //   283: invokevirtual a : (Lbsh/Node;Z)V
    //   286: iload_3
    //   287: istore_1
    //   288: aload_0
    //   289: aload #8
    //   291: invokevirtual b : (Lbsh/Node;)V
    //   294: iload_3
    //   295: istore_1
    //   296: aload #6
    //   298: getfield image : Ljava/lang/String;
    //   301: astore #7
    //   303: iload_3
    //   304: istore_1
    //   305: aload #7
    //   307: aload #7
    //   309: invokevirtual length : ()I
    //   312: iconst_1
    //   313: isub
    //   314: invokevirtual charAt : (I)C
    //   317: istore #4
    //   319: iload #4
    //   321: bipush #102
    //   323: if_icmpeq -> 386
    //   326: iload #4
    //   328: bipush #70
    //   330: if_icmpne -> 895
    //   333: goto -> 386
    //   336: iload_3
    //   337: istore_1
    //   338: aload #7
    //   340: iconst_0
    //   341: aload #7
    //   343: invokevirtual length : ()I
    //   346: iconst_1
    //   347: isub
    //   348: invokevirtual substring : (II)Ljava/lang/String;
    //   351: astore #6
    //   353: iload_3
    //   354: istore_1
    //   355: new bsh/Primitive
    //   358: dup
    //   359: new java/lang/Double
    //   362: dup
    //   363: aload #6
    //   365: invokespecial <init> : (Ljava/lang/String;)V
    //   368: invokevirtual doubleValue : ()D
    //   371: invokespecial <init> : (D)V
    //   374: astore #6
    //   376: iload_3
    //   377: istore_1
    //   378: aload #8
    //   380: aload #6
    //   382: putfield value : Ljava/lang/Object;
    //   385: return
    //   386: iload_3
    //   387: istore_1
    //   388: new bsh/Primitive
    //   391: dup
    //   392: new java/lang/Float
    //   395: dup
    //   396: aload #7
    //   398: iconst_0
    //   399: aload #7
    //   401: invokevirtual length : ()I
    //   404: iconst_1
    //   405: isub
    //   406: invokevirtual substring : (II)Ljava/lang/String;
    //   409: invokespecial <init> : (Ljava/lang/String;)V
    //   412: invokevirtual floatValue : ()F
    //   415: invokespecial <init> : (F)V
    //   418: astore #6
    //   420: goto -> 376
    //   423: aload_0
    //   424: bipush #60
    //   426: invokespecial F : (I)Lbsh/Token;
    //   429: astore #6
    //   431: aload_0
    //   432: getfield a : Lbsh/JJTParserState;
    //   435: aload #8
    //   437: iconst_1
    //   438: invokevirtual a : (Lbsh/Node;Z)V
    //   441: iload_3
    //   442: istore_1
    //   443: aload_0
    //   444: aload #8
    //   446: invokevirtual b : (Lbsh/Node;)V
    //   449: iload_3
    //   450: istore_1
    //   451: aload #6
    //   453: getfield image : Ljava/lang/String;
    //   456: astore #6
    //   458: iload_3
    //   459: istore_1
    //   460: aload #6
    //   462: aload #6
    //   464: invokevirtual length : ()I
    //   467: iconst_1
    //   468: isub
    //   469: invokevirtual charAt : (I)C
    //   472: istore #4
    //   474: iload #4
    //   476: bipush #108
    //   478: if_icmpeq -> 558
    //   481: iload #4
    //   483: bipush #76
    //   485: if_icmpne -> 491
    //   488: goto -> 558
    //   491: iload_3
    //   492: istore_1
    //   493: aload #8
    //   495: new bsh/Primitive
    //   498: dup
    //   499: aload #6
    //   501: invokestatic decode : (Ljava/lang/String;)Ljava/lang/Integer;
    //   504: invokevirtual intValue : ()I
    //   507: invokespecial <init> : (I)V
    //   510: putfield value : Ljava/lang/Object;
    //   513: return
    //   514: iload_3
    //   515: istore_1
    //   516: new java/lang/StringBuffer
    //   519: dup
    //   520: invokespecial <init> : ()V
    //   523: astore #7
    //   525: iload_3
    //   526: istore_1
    //   527: aload #7
    //   529: ldc_w 'Error or number too big for integer type: '
    //   532: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   535: pop
    //   536: iload_3
    //   537: istore_1
    //   538: aload #7
    //   540: aload #6
    //   542: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   545: pop
    //   546: iload_3
    //   547: istore_1
    //   548: aload_0
    //   549: aload #7
    //   551: invokevirtual toString : ()Ljava/lang/String;
    //   554: invokevirtual a : (Ljava/lang/String;)Lbsh/ParseException;
    //   557: athrow
    //   558: iload_3
    //   559: istore_1
    //   560: new bsh/Primitive
    //   563: dup
    //   564: new java/lang/Long
    //   567: dup
    //   568: aload #6
    //   570: iconst_0
    //   571: aload #6
    //   573: invokevirtual length : ()I
    //   576: iconst_1
    //   577: isub
    //   578: invokevirtual substring : (II)Ljava/lang/String;
    //   581: invokespecial <init> : (Ljava/lang/String;)V
    //   584: invokevirtual longValue : ()J
    //   587: invokespecial <init> : (J)V
    //   590: astore #6
    //   592: goto -> 376
    //   595: aload_0
    //   596: invokevirtual VoidLiteral : ()V
    //   599: aload_0
    //   600: getfield a : Lbsh/JJTParserState;
    //   603: aload #8
    //   605: iconst_1
    //   606: invokevirtual a : (Lbsh/Node;Z)V
    //   609: iload_3
    //   610: istore_1
    //   611: aload_0
    //   612: aload #8
    //   614: invokevirtual b : (Lbsh/Node;)V
    //   617: iload_3
    //   618: istore_1
    //   619: getstatic bsh/Primitive.VOID : Lbsh/Primitive;
    //   622: astore #6
    //   624: iload_3
    //   625: istore_1
    //   626: aload #8
    //   628: aload #6
    //   630: putfield value : Ljava/lang/Object;
    //   633: return
    //   634: aload_0
    //   635: invokevirtual NullLiteral : ()V
    //   638: aload_0
    //   639: getfield a : Lbsh/JJTParserState;
    //   642: aload #8
    //   644: iconst_1
    //   645: invokevirtual a : (Lbsh/Node;Z)V
    //   648: iload_3
    //   649: istore_1
    //   650: aload_0
    //   651: aload #8
    //   653: invokevirtual b : (Lbsh/Node;)V
    //   656: iload_3
    //   657: istore_1
    //   658: getstatic bsh/Primitive.NULL : Lbsh/Primitive;
    //   661: astore #6
    //   663: goto -> 624
    //   666: aload_0
    //   667: invokevirtual BooleanLiteral : ()Z
    //   670: istore #5
    //   672: aload_0
    //   673: getfield a : Lbsh/JJTParserState;
    //   676: aload #8
    //   678: iconst_1
    //   679: invokevirtual a : (Lbsh/Node;Z)V
    //   682: iload_3
    //   683: istore_1
    //   684: aload_0
    //   685: aload #8
    //   687: invokevirtual b : (Lbsh/Node;)V
    //   690: iload_3
    //   691: istore_1
    //   692: new bsh/Primitive
    //   695: dup
    //   696: iload #5
    //   698: invokespecial <init> : (Z)V
    //   701: astore #6
    //   703: goto -> 376
    //   706: astore #6
    //   708: iconst_0
    //   709: istore_1
    //   710: goto -> 724
    //   713: astore #6
    //   715: iconst_1
    //   716: istore_1
    //   717: goto -> 796
    //   720: astore #6
    //   722: iconst_1
    //   723: istore_1
    //   724: iload_1
    //   725: ifeq -> 740
    //   728: aload_0
    //   729: getfield a : Lbsh/JJTParserState;
    //   732: aload #8
    //   734: invokevirtual b : (Lbsh/Node;)V
    //   737: goto -> 750
    //   740: aload_0
    //   741: getfield a : Lbsh/JJTParserState;
    //   744: invokevirtual c : ()Lbsh/Node;
    //   747: pop
    //   748: iload_1
    //   749: istore_2
    //   750: iload_2
    //   751: istore_1
    //   752: aload #6
    //   754: instanceof java/lang/RuntimeException
    //   757: ifeq -> 768
    //   760: iload_2
    //   761: istore_1
    //   762: aload #6
    //   764: checkcast java/lang/RuntimeException
    //   767: athrow
    //   768: iload_2
    //   769: istore_1
    //   770: aload #6
    //   772: instanceof bsh/ParseException
    //   775: ifeq -> 786
    //   778: iload_2
    //   779: istore_1
    //   780: aload #6
    //   782: checkcast bsh/ParseException
    //   785: athrow
    //   786: iload_2
    //   787: istore_1
    //   788: aload #6
    //   790: checkcast java/lang/Error
    //   793: athrow
    //   794: astore #6
    //   796: iload_1
    //   797: ifeq -> 816
    //   800: aload_0
    //   801: getfield a : Lbsh/JJTParserState;
    //   804: aload #8
    //   806: iconst_1
    //   807: invokevirtual a : (Lbsh/Node;Z)V
    //   810: aload_0
    //   811: aload #8
    //   813: invokevirtual b : (Lbsh/Node;)V
    //   816: aload #6
    //   818: athrow
    //   819: astore #7
    //   821: goto -> 121
    //   824: astore #7
    //   826: goto -> 221
    //   829: astore #7
    //   831: goto -> 514
    //   834: iload_1
    //   835: bipush #26
    //   837: if_icmpeq -> 666
    //   840: iload_1
    //   841: bipush #41
    //   843: if_icmpeq -> 634
    //   846: iload_1
    //   847: bipush #55
    //   849: if_icmpeq -> 666
    //   852: iload_1
    //   853: bipush #57
    //   855: if_icmpeq -> 595
    //   858: iload_1
    //   859: bipush #60
    //   861: if_icmpeq -> 423
    //   864: iload_1
    //   865: bipush #64
    //   867: if_icmpeq -> 268
    //   870: iload_1
    //   871: tableswitch default -> 892, 66 -> 168, 67 -> 68
    //   892: goto -> 54
    //   895: iload #4
    //   897: bipush #100
    //   899: if_icmpeq -> 336
    //   902: aload #7
    //   904: astore #6
    //   906: iload #4
    //   908: bipush #68
    //   910: if_icmpne -> 353
    //   913: goto -> 336
    //   916: astore #6
    //   918: goto -> 796
    // Exception table:
    //   from	to	target	type
    //   30	43	720	java/lang/Throwable
    //   30	43	713	finally
    //   46	51	720	java/lang/Throwable
    //   46	51	713	finally
    //   54	68	720	java/lang/Throwable
    //   54	68	713	finally
    //   68	86	720	java/lang/Throwable
    //   68	86	713	finally
    //   88	94	706	java/lang/Throwable
    //   88	94	794	finally
    //   96	120	819	java/lang/Exception
    //   96	120	706	java/lang/Throwable
    //   96	120	794	finally
    //   123	132	706	java/lang/Throwable
    //   123	132	794	finally
    //   134	143	706	java/lang/Throwable
    //   134	143	794	finally
    //   145	156	706	java/lang/Throwable
    //   145	156	794	finally
    //   158	168	706	java/lang/Throwable
    //   158	168	794	finally
    //   168	186	720	java/lang/Throwable
    //   168	186	713	finally
    //   188	194	706	java/lang/Throwable
    //   188	194	794	finally
    //   196	220	824	java/lang/Exception
    //   196	220	706	java/lang/Throwable
    //   196	220	794	finally
    //   223	232	706	java/lang/Throwable
    //   223	232	794	finally
    //   234	243	706	java/lang/Throwable
    //   234	243	794	finally
    //   245	256	706	java/lang/Throwable
    //   245	256	794	finally
    //   258	268	706	java/lang/Throwable
    //   258	268	794	finally
    //   268	286	720	java/lang/Throwable
    //   268	286	713	finally
    //   288	294	706	java/lang/Throwable
    //   288	294	794	finally
    //   296	303	706	java/lang/Throwable
    //   296	303	794	finally
    //   305	319	706	java/lang/Throwable
    //   305	319	794	finally
    //   338	353	706	java/lang/Throwable
    //   338	353	794	finally
    //   355	376	706	java/lang/Throwable
    //   355	376	794	finally
    //   378	385	706	java/lang/Throwable
    //   378	385	794	finally
    //   388	420	706	java/lang/Throwable
    //   388	420	794	finally
    //   423	441	720	java/lang/Throwable
    //   423	441	713	finally
    //   443	449	706	java/lang/Throwable
    //   443	449	794	finally
    //   451	458	706	java/lang/Throwable
    //   451	458	794	finally
    //   460	474	706	java/lang/Throwable
    //   460	474	794	finally
    //   493	513	829	java/lang/NumberFormatException
    //   493	513	706	java/lang/Throwable
    //   493	513	794	finally
    //   516	525	706	java/lang/Throwable
    //   516	525	794	finally
    //   527	536	706	java/lang/Throwable
    //   527	536	794	finally
    //   538	546	706	java/lang/Throwable
    //   538	546	794	finally
    //   548	558	706	java/lang/Throwable
    //   548	558	794	finally
    //   560	592	706	java/lang/Throwable
    //   560	592	794	finally
    //   595	609	720	java/lang/Throwable
    //   595	609	713	finally
    //   611	617	706	java/lang/Throwable
    //   611	617	794	finally
    //   619	624	706	java/lang/Throwable
    //   619	624	794	finally
    //   626	633	706	java/lang/Throwable
    //   626	633	794	finally
    //   634	648	720	java/lang/Throwable
    //   634	648	713	finally
    //   650	656	706	java/lang/Throwable
    //   650	656	794	finally
    //   658	663	706	java/lang/Throwable
    //   658	663	794	finally
    //   666	682	720	java/lang/Throwable
    //   666	682	713	finally
    //   684	690	706	java/lang/Throwable
    //   684	690	794	finally
    //   692	703	706	java/lang/Throwable
    //   692	703	794	finally
    //   728	737	916	finally
    //   740	748	916	finally
    //   752	760	794	finally
    //   762	768	794	finally
    //   770	778	794	finally
    //   780	786	794	finally
    //   788	794	794	finally }
  
  public final void MethodDeclaration() {
    BSHMethodDeclaration bSHMethodDeclaration = new BSHMethodDeclaration(2);
    this.a.c(bSHMethodDeclaration);
    a(bSHMethodDeclaration);
    try {
      String str;
      bSHMethodDeclaration.modifiers = Modifiers(1, false);
      if (b(2147483647)) {
        str = (F(69)).image;
      } else {
        if (this.d == -1) {
          j = dq();
        } else {
          j = this.d;
        } 
        if (j != 11 && j != 14 && j != 17 && j != 22 && j != 29 && j != 36 && j != 38 && j != 47 && j != 57 && j != 69) {
          F(-1);
          throw new ParseException();
        } 
        ReturnType();
        str = (F(69)).image;
      } 
      bSHMethodDeclaration.name = str;
      FormalParameters();
    } catch (Throwable throwable) {
      this.a.b(bSHMethodDeclaration);
      try {
        if (throwable instanceof RuntimeException)
          throw (RuntimeException)throwable; 
        if (throwable instanceof ParseException)
          throw (ParseException)throwable; 
        throw (Error)throwable;
      } finally {
        throwable = null;
      } 
      if (j) {
        this.a.a(bSHMethodDeclaration, true);
        b(bSHMethodDeclaration);
      } 
      throw throwable;
    } finally {
      Throwable throwable = null;
    } 
    if (j == 54) {
      F(54);
      bSHMethodDeclaration.f = NameList();
    } 
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    if (j != 74) {
      if (j != 78) {
        F(-1);
        throw new ParseException();
      } 
      F(78);
    } else {
      Block();
    } 
    this.a.a(bSHMethodDeclaration, true);
    b(bSHMethodDeclaration);
  }
  
  public final void MethodInvocation() {
    boolean bool;
    bSHMethodInvocation = new BSHMethodInvocation(19);
    this.a.c(bSHMethodInvocation);
    a(bSHMethodInvocation);
    try {
      AmbiguousName();
      Arguments();
      this.a.a(bSHMethodInvocation, true);
      return;
    } catch (Throwable null) {
      this.a.b(bSHMethodInvocation);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHMethodInvocation, true);
      b(bSHMethodInvocation);
    } 
    throw throwable;
  }
  
  public final Modifiers Modifiers(int paramInt, boolean paramBoolean) {
    for (modifiers = null;; modifiers = modifiers1) {
      Modifiers modifiers1;
      int j;
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          return modifiers;
        case 10:
        case 27:
        case 39:
        case 43:
        case 44:
        case 45:
        case 48:
        case 49:
        case 51:
        case 52:
        case 58:
          break;
      } 
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          F(-1);
          throw new ParseException();
        case 58:
          j = 58;
          break;
        case 52:
          j = 52;
          break;
        case 51:
          j = 51;
          break;
        case 49:
          j = 49;
          break;
        case 48:
          j = 48;
          break;
        case 45:
          j = 45;
          break;
        case 44:
          j = 44;
          break;
        case 43:
          j = 43;
          break;
        case 39:
          j = 39;
          break;
        case 27:
          j = 27;
          break;
        case 10:
          j = 10;
          break;
      } 
      F(j);
      if (!paramBoolean) {
        modifiers1 = modifiers;
        if (modifiers == null)
          try {
            modifiers1 = new Modifiers();
            modifiers1.addModifier(paramInt, (getToken(0)).image);
            modifiers = modifiers1;
            continue;
          } catch (IllegalStateException modifiers) {
            throw a(modifiers.getMessage());
          }  
      } else {
        continue;
      } 
      modifiers1.addModifier(paramInt, (getToken(0)).image);
    } 
  }
  
  public final void MultiplicativeExpression() {
    UnaryExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      if (j != 111)
        switch (j) {
          default:
            return;
          case 104:
          case 105:
            break;
        }  
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      if (j != 111) {
        switch (j) {
          default:
            F(-1);
            throw new ParseException();
          case 105:
            j = 105;
            break;
          case 104:
            j = 104;
            break;
        } 
        null = F(j);
      } else {
        null = F(111);
      } 
      UnaryExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final int NameList() {
    AmbiguousName();
    for (byte b1 = 1;; b1++) {
      int j;
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      if (j != 79)
        return b1; 
      F(79);
      AmbiguousName();
    } 
  }
  
  public final void NullLiteral() { F(41); }
  
  public final void PackageDeclaration() {
    boolean bool;
    bSHPackageDeclaration = new BSHPackageDeclaration(3);
    this.a.c(bSHPackageDeclaration);
    a(bSHPackageDeclaration);
    try {
      F(42);
      AmbiguousName();
      this.a.a(bSHPackageDeclaration, true);
      return;
    } catch (Throwable null) {
      this.a.b(bSHPackageDeclaration);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHPackageDeclaration, true);
      b(bSHPackageDeclaration);
    } 
    throw throwable;
  }
  
  public final void PostfixExpression() {
    int j;
    if (l(2147483647)) {
      PrimaryExpression();
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          F(-1);
          throw new ParseException();
        case 101:
          j = 101;
          break;
        case 100:
          j = 100;
          break;
      } 
      token1 = F(j);
      bSHUnaryExpression = new BSHUnaryExpression(16);
      this.a.c(bSHUnaryExpression);
      a(bSHUnaryExpression);
      try {
        this.a.a(bSHUnaryExpression, 1);
        j = 0;
      } finally {
        token1 = null;
      } 
      if (j != 0) {
        this.a.a(bSHUnaryExpression, 1);
        b(bSHUnaryExpression);
      } 
      throw token1;
    } 
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    switch (j) {
      default:
        F(-1);
        throw new ParseException();
      case 11:
      case 14:
      case 17:
      case 22:
      case 26:
      case 29:
      case 36:
      case 38:
      case 40:
      case 41:
      case 47:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
      case 69:
      case 72:
        break;
    } 
    PrimaryExpression();
  }
  
  public final void PreDecrementExpression() {
    boolean bool;
    token1 = F(101);
    PrimaryExpression();
    bSHUnaryExpression = new BSHUnaryExpression(16);
    this.a.c(bSHUnaryExpression);
    a(bSHUnaryExpression);
    try {
      this.a.a(bSHUnaryExpression, 1);
      bool = false;
    } finally {
      token1 = null;
    } 
    if (bool) {
      this.a.a(bSHUnaryExpression, 1);
      b(bSHUnaryExpression);
    } 
    throw token1;
  }
  
  public final void PreIncrementExpression() {
    boolean bool;
    token1 = F(100);
    PrimaryExpression();
    bSHUnaryExpression = new BSHUnaryExpression(16);
    this.a.c(bSHUnaryExpression);
    a(bSHUnaryExpression);
    try {
      this.a.a(bSHUnaryExpression, 1);
      bool = false;
    } finally {
      token1 = null;
    } 
    if (bool) {
      this.a.a(bSHUnaryExpression, 1);
      b(bSHUnaryExpression);
    } 
    throw token1;
  }
  
  public final void PrimaryExpression() {
    boolean bool;
    bSHPrimaryExpression = new BSHPrimaryExpression(18);
    this.a.c(bSHPrimaryExpression);
    a(bSHPrimaryExpression);
    try {
      PrimaryPrefix();
      while (true) {
        if (this.d == -1) {
          bool = dq();
        } else {
          bool = this.d;
        } 
        if (bool != 74 && bool != 76 && bool != 80) {
          this.a.a(bSHPrimaryExpression, true);
          return;
        } 
        PrimarySuffix();
      } 
    } catch (Throwable null) {
      this.a.b(bSHPrimaryExpression);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHPrimaryExpression, true);
      b(bSHPrimaryExpression);
    } 
    throw throwable;
  }
  
  public final void PrimaryPrefix() {
    int j;
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    switch (j) {
      default:
        if (n(2147483647)) {
          MethodInvocation();
          return;
        } 
        break;
      case 72:
        F(72);
        Expression();
        F(73);
        return;
      case 40:
        AllocationExpression();
        return;
      case 26:
      case 41:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
        Literal();
        return;
    } 
    if (o(2147483647)) {
      Type();
      return;
    } 
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    if (j != 69) {
      F(-1);
      throw new ParseException();
    } 
    AmbiguousName();
  }
  
  public final void PrimarySuffix() { // Byte code:
    //   0: new bsh/BSHPrimarySuffix
    //   3: dup
    //   4: bipush #20
    //   6: invokespecial <init> : (I)V
    //   9: astore #5
    //   11: aload_0
    //   12: getfield a : Lbsh/JJTParserState;
    //   15: aload #5
    //   17: invokevirtual c : (Lbsh/Node;)V
    //   20: aload_0
    //   21: aload #5
    //   23: invokevirtual a : (Lbsh/Node;)V
    //   26: iconst_0
    //   27: istore_3
    //   28: iconst_0
    //   29: istore_2
    //   30: aload_0
    //   31: iconst_2
    //   32: invokespecial p : (I)Z
    //   35: ifeq -> 86
    //   38: aload_0
    //   39: bipush #80
    //   41: invokespecial F : (I)Lbsh/Token;
    //   44: pop
    //   45: aload_0
    //   46: bipush #13
    //   48: invokespecial F : (I)Lbsh/Token;
    //   51: pop
    //   52: aload_0
    //   53: getfield a : Lbsh/JJTParserState;
    //   56: aload #5
    //   58: iconst_1
    //   59: invokevirtual a : (Lbsh/Node;Z)V
    //   62: iload_3
    //   63: istore_1
    //   64: aload_0
    //   65: aload #5
    //   67: invokevirtual b : (Lbsh/Node;)V
    //   70: iload_3
    //   71: istore_1
    //   72: aload #5
    //   74: iconst_0
    //   75: putfield operation : I
    //   78: return
    //   79: astore #4
    //   81: iconst_0
    //   82: istore_1
    //   83: goto -> 322
    //   86: aload_0
    //   87: getfield d : I
    //   90: iconst_m1
    //   91: if_icmpne -> 102
    //   94: aload_0
    //   95: invokespecial dq : ()I
    //   98: istore_1
    //   99: goto -> 107
    //   102: aload_0
    //   103: getfield d : I
    //   106: istore_1
    //   107: iload_1
    //   108: bipush #74
    //   110: if_icmpeq -> 266
    //   113: iload_1
    //   114: bipush #76
    //   116: if_icmpeq -> 221
    //   119: iload_1
    //   120: bipush #80
    //   122: if_icmpeq -> 139
    //   125: aload_0
    //   126: iconst_m1
    //   127: invokespecial F : (I)Lbsh/Token;
    //   130: pop
    //   131: new bsh/ParseException
    //   134: dup
    //   135: invokespecial <init> : ()V
    //   138: athrow
    //   139: aload_0
    //   140: bipush #80
    //   142: invokespecial F : (I)Lbsh/Token;
    //   145: pop
    //   146: aload_0
    //   147: bipush #69
    //   149: invokespecial F : (I)Lbsh/Token;
    //   152: astore #4
    //   154: aload_0
    //   155: getfield d : I
    //   158: iconst_m1
    //   159: if_icmpne -> 170
    //   162: aload_0
    //   163: invokespecial dq : ()I
    //   166: istore_1
    //   167: goto -> 417
    //   170: aload_0
    //   171: getfield d : I
    //   174: istore_1
    //   175: goto -> 417
    //   178: aload_0
    //   179: invokevirtual Arguments : ()V
    //   182: aload_0
    //   183: getfield a : Lbsh/JJTParserState;
    //   186: aload #5
    //   188: iconst_1
    //   189: invokevirtual a : (Lbsh/Node;Z)V
    //   192: iload_3
    //   193: istore_1
    //   194: aload_0
    //   195: aload #5
    //   197: invokevirtual b : (Lbsh/Node;)V
    //   200: iload_3
    //   201: istore_1
    //   202: aload #5
    //   204: iconst_2
    //   205: putfield operation : I
    //   208: iload_3
    //   209: istore_1
    //   210: aload #5
    //   212: aload #4
    //   214: getfield image : Ljava/lang/String;
    //   217: putfield field : Ljava/lang/String;
    //   220: return
    //   221: aload_0
    //   222: bipush #76
    //   224: invokespecial F : (I)Lbsh/Token;
    //   227: pop
    //   228: aload_0
    //   229: invokevirtual Expression : ()V
    //   232: aload_0
    //   233: bipush #77
    //   235: invokespecial F : (I)Lbsh/Token;
    //   238: pop
    //   239: aload_0
    //   240: getfield a : Lbsh/JJTParserState;
    //   243: aload #5
    //   245: iconst_1
    //   246: invokevirtual a : (Lbsh/Node;Z)V
    //   249: iload_3
    //   250: istore_1
    //   251: aload_0
    //   252: aload #5
    //   254: invokevirtual b : (Lbsh/Node;)V
    //   257: iload_3
    //   258: istore_1
    //   259: aload #5
    //   261: iconst_1
    //   262: putfield operation : I
    //   265: return
    //   266: aload_0
    //   267: bipush #74
    //   269: invokespecial F : (I)Lbsh/Token;
    //   272: pop
    //   273: aload_0
    //   274: invokevirtual Expression : ()V
    //   277: aload_0
    //   278: bipush #75
    //   280: invokespecial F : (I)Lbsh/Token;
    //   283: pop
    //   284: aload_0
    //   285: getfield a : Lbsh/JJTParserState;
    //   288: aload #5
    //   290: iconst_1
    //   291: invokevirtual a : (Lbsh/Node;Z)V
    //   294: iload_3
    //   295: istore_1
    //   296: aload_0
    //   297: aload #5
    //   299: invokevirtual b : (Lbsh/Node;)V
    //   302: iload_3
    //   303: istore_1
    //   304: aload #5
    //   306: iconst_3
    //   307: putfield operation : I
    //   310: return
    //   311: astore #4
    //   313: iconst_1
    //   314: istore_1
    //   315: goto -> 394
    //   318: astore #4
    //   320: iconst_1
    //   321: istore_1
    //   322: iload_1
    //   323: ifeq -> 338
    //   326: aload_0
    //   327: getfield a : Lbsh/JJTParserState;
    //   330: aload #5
    //   332: invokevirtual b : (Lbsh/Node;)V
    //   335: goto -> 348
    //   338: aload_0
    //   339: getfield a : Lbsh/JJTParserState;
    //   342: invokevirtual c : ()Lbsh/Node;
    //   345: pop
    //   346: iload_1
    //   347: istore_2
    //   348: iload_2
    //   349: istore_1
    //   350: aload #4
    //   352: instanceof java/lang/RuntimeException
    //   355: ifeq -> 366
    //   358: iload_2
    //   359: istore_1
    //   360: aload #4
    //   362: checkcast java/lang/RuntimeException
    //   365: athrow
    //   366: iload_2
    //   367: istore_1
    //   368: aload #4
    //   370: instanceof bsh/ParseException
    //   373: ifeq -> 384
    //   376: iload_2
    //   377: istore_1
    //   378: aload #4
    //   380: checkcast bsh/ParseException
    //   383: athrow
    //   384: iload_2
    //   385: istore_1
    //   386: aload #4
    //   388: checkcast java/lang/Error
    //   391: athrow
    //   392: astore #4
    //   394: iload_1
    //   395: ifeq -> 414
    //   398: aload_0
    //   399: getfield a : Lbsh/JJTParserState;
    //   402: aload #5
    //   404: iconst_1
    //   405: invokevirtual a : (Lbsh/Node;Z)V
    //   408: aload_0
    //   409: aload #5
    //   411: invokevirtual b : (Lbsh/Node;)V
    //   414: aload #4
    //   416: athrow
    //   417: iload_1
    //   418: bipush #72
    //   420: if_icmpeq -> 178
    //   423: goto -> 182
    //   426: astore #4
    //   428: goto -> 394
    // Exception table:
    //   from	to	target	type
    //   30	62	318	java/lang/Throwable
    //   30	62	311	finally
    //   64	70	79	java/lang/Throwable
    //   64	70	392	finally
    //   72	78	79	java/lang/Throwable
    //   72	78	392	finally
    //   86	99	318	java/lang/Throwable
    //   86	99	311	finally
    //   102	107	318	java/lang/Throwable
    //   102	107	311	finally
    //   125	139	318	java/lang/Throwable
    //   125	139	311	finally
    //   139	167	318	java/lang/Throwable
    //   139	167	311	finally
    //   170	175	318	java/lang/Throwable
    //   170	175	311	finally
    //   178	182	318	java/lang/Throwable
    //   178	182	311	finally
    //   182	192	318	java/lang/Throwable
    //   182	192	311	finally
    //   194	200	79	java/lang/Throwable
    //   194	200	392	finally
    //   202	208	79	java/lang/Throwable
    //   202	208	392	finally
    //   210	220	79	java/lang/Throwable
    //   210	220	392	finally
    //   221	249	318	java/lang/Throwable
    //   221	249	311	finally
    //   251	257	79	java/lang/Throwable
    //   251	257	392	finally
    //   259	265	79	java/lang/Throwable
    //   259	265	392	finally
    //   266	294	318	java/lang/Throwable
    //   266	294	311	finally
    //   296	302	79	java/lang/Throwable
    //   296	302	392	finally
    //   304	310	79	java/lang/Throwable
    //   304	310	392	finally
    //   326	335	426	finally
    //   338	346	426	finally
    //   350	358	392	finally
    //   360	366	392	finally
    //   368	376	392	finally
    //   378	384	392	finally
    //   386	392	392	finally }
  
  public final void PrimitiveType() {
    bSHPrimitiveType = new BSHPrimitiveType(11);
    this.a.c(bSHPrimitiveType);
    a(bSHPrimitiveType);
    int j = 0;
    try {
      if (this.d == -1) {
        bool = dq();
      } else {
        bool = this.d;
      } 
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHPrimitiveType, true);
      b(bSHPrimitiveType);
    } 
    throw throwable;
  }
  
  public void ReInit(ParserTokenManager paramParserTokenManager) {
    this.token_source = paramParserTokenManager;
    this.token = new Token();
    this.d = -1;
    this.a.a();
  }
  
  public void ReInit(InputStream paramInputStream) {
    this.c.ReInit(paramInputStream, 1, 1);
    this.token_source.ReInit(this.c);
    this.token = new Token();
    this.d = -1;
    this.a.a();
  }
  
  public void ReInit(Reader paramReader) {
    this.c.ReInit(paramReader, 1, 1);
    this.token_source.ReInit(this.c);
    this.token = new Token();
    this.d = -1;
    this.a.a();
  }
  
  public final void RelationalExpression() {
    ShiftExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          switch (j) {
            default:
              return;
            case 91:
            case 92:
            case 93:
            case 94:
              break;
          } 
          break;
        case 82:
        case 83:
        case 84:
        case 85:
          break;
      } 
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          switch (j) {
            default:
              F(-1);
              throw new ParseException();
            case 94:
              j = 94;
              break;
            case 93:
              j = 93;
              break;
            case 92:
              j = 92;
              break;
            case 91:
              break;
          } 
          j = 91;
          break;
        case 85:
          j = 85;
          break;
        case 84:
          j = 84;
          break;
        case 83:
          j = 83;
          break;
        case 82:
          j = 82;
          break;
      } 
      null = F(j);
      ShiftExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final void ReturnStatement() { // Byte code:
    //   0: new bsh/BSHReturnStatement
    //   3: dup
    //   4: bipush #35
    //   6: invokespecial <init> : (I)V
    //   9: astore #4
    //   11: aload_0
    //   12: getfield a : Lbsh/JJTParserState;
    //   15: aload #4
    //   17: invokevirtual c : (Lbsh/Node;)V
    //   20: aload_0
    //   21: aload #4
    //   23: invokevirtual a : (Lbsh/Node;)V
    //   26: iconst_0
    //   27: istore_2
    //   28: aload_0
    //   29: bipush #46
    //   31: invokespecial F : (I)Lbsh/Token;
    //   34: pop
    //   35: aload_0
    //   36: getfield d : I
    //   39: iconst_m1
    //   40: if_icmpne -> 51
    //   43: aload_0
    //   44: invokespecial dq : ()I
    //   47: istore_1
    //   48: goto -> 193
    //   51: aload_0
    //   52: getfield d : I
    //   55: istore_1
    //   56: goto -> 193
    //   59: aload_0
    //   60: invokevirtual Expression : ()V
    //   63: aload_0
    //   64: bipush #78
    //   66: invokespecial F : (I)Lbsh/Token;
    //   69: pop
    //   70: aload_0
    //   71: getfield a : Lbsh/JJTParserState;
    //   74: aload #4
    //   76: iconst_1
    //   77: invokevirtual a : (Lbsh/Node;Z)V
    //   80: aload_0
    //   81: aload #4
    //   83: invokevirtual b : (Lbsh/Node;)V
    //   86: aload #4
    //   88: bipush #46
    //   90: putfield kind : I
    //   93: return
    //   94: astore_3
    //   95: iconst_0
    //   96: istore_1
    //   97: goto -> 171
    //   100: astore_3
    //   101: iconst_0
    //   102: istore_1
    //   103: goto -> 115
    //   106: astore_3
    //   107: iconst_1
    //   108: istore_1
    //   109: goto -> 171
    //   112: astore_3
    //   113: iconst_1
    //   114: istore_1
    //   115: iload_1
    //   116: ifeq -> 133
    //   119: aload_0
    //   120: getfield a : Lbsh/JJTParserState;
    //   123: aload #4
    //   125: invokevirtual b : (Lbsh/Node;)V
    //   128: iload_2
    //   129: istore_1
    //   130: goto -> 141
    //   133: aload_0
    //   134: getfield a : Lbsh/JJTParserState;
    //   137: invokevirtual c : ()Lbsh/Node;
    //   140: pop
    //   141: aload_3
    //   142: instanceof java/lang/RuntimeException
    //   145: ifeq -> 153
    //   148: aload_3
    //   149: checkcast java/lang/RuntimeException
    //   152: athrow
    //   153: aload_3
    //   154: instanceof bsh/ParseException
    //   157: ifeq -> 165
    //   160: aload_3
    //   161: checkcast bsh/ParseException
    //   164: athrow
    //   165: aload_3
    //   166: checkcast java/lang/Error
    //   169: athrow
    //   170: astore_3
    //   171: iload_1
    //   172: ifeq -> 191
    //   175: aload_0
    //   176: getfield a : Lbsh/JJTParserState;
    //   179: aload #4
    //   181: iconst_1
    //   182: invokevirtual a : (Lbsh/Node;Z)V
    //   185: aload_0
    //   186: aload #4
    //   188: invokevirtual b : (Lbsh/Node;)V
    //   191: aload_3
    //   192: athrow
    //   193: iload_1
    //   194: lookupswitch default -> 404, 11 -> 59, 14 -> 59, 17 -> 59, 22 -> 59, 26 -> 59, 29 -> 59, 36 -> 59, 38 -> 59, 40 -> 59, 41 -> 59, 47 -> 59, 55 -> 59, 57 -> 59, 60 -> 59, 64 -> 59, 66 -> 59, 67 -> 59, 69 -> 59, 72 -> 59, 86 -> 59, 87 -> 59, 100 -> 59, 101 -> 59, 102 -> 59, 103 -> 59
    //   404: goto -> 63
    //   407: astore_3
    //   408: goto -> 171
    // Exception table:
    //   from	to	target	type
    //   28	48	112	java/lang/Throwable
    //   28	48	106	finally
    //   51	56	112	java/lang/Throwable
    //   51	56	106	finally
    //   59	63	112	java/lang/Throwable
    //   59	63	106	finally
    //   63	80	112	java/lang/Throwable
    //   63	80	106	finally
    //   80	93	100	java/lang/Throwable
    //   80	93	94	finally
    //   119	128	407	finally
    //   133	141	407	finally
    //   141	153	170	finally
    //   153	165	170	finally
    //   165	170	170	finally }
  
  public final void ReturnType() {
    bSHReturnType = new BSHReturnType(10);
    this.a.c(bSHReturnType);
    a(bSHReturnType);
    b1 = 0;
    j = 0;
    try {
      if (this.d == -1) {
        bool = dq();
      } else {
        bool = this.d;
      } 
      if (bool != 11 && bool != 14 && bool != 17 && bool != 22 && bool != 29 && bool != 36 && bool != 38 && bool != 47)
        if (bool != 57) {
          if (bool != 69) {
            F(-1);
            throw new ParseException();
          } 
        } else {
          F(57);
          this.a.a(bSHReturnType, true);
          try {
            b(bSHReturnType);
            bSHReturnType.isVoid = true;
          } catch (Throwable null) {
          
          } finally {
            throwable = null;
          } 
          if (bool != 0) {
            this.a.a(bSHReturnType, true);
            b(bSHReturnType);
          } 
        }  
      Type();
      bool = true;
    } catch (Throwable null) {
      bool = true;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHReturnType, true);
      b(bSHReturnType);
    } 
    throw throwable;
  }
  
  public final void ShiftExpression() {
    AdditiveExpression();
    while (true) {
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          return;
        case 112:
        case 113:
        case 114:
        case 115:
        case 116:
        case 117:
          break;
      } 
      if (this.d == -1) {
        j = dq();
      } else {
        j = this.d;
      } 
      switch (j) {
        default:
          F(-1);
          throw new ParseException();
        case 117:
          j = 117;
          break;
        case 116:
          j = 116;
          break;
        case 115:
          j = 115;
          break;
        case 114:
          j = 114;
          break;
        case 113:
          j = 113;
          break;
        case 112:
          j = 112;
          break;
      } 
      null = F(j);
      AdditiveExpression();
      bSHBinaryExpression = new BSHBinaryExpression(15);
      int j = 1;
      this.a.c(bSHBinaryExpression);
      a(bSHBinaryExpression);
      try {
        this.a.a(bSHBinaryExpression, 2);
        int k = 0;
        j = k;
        b(bSHBinaryExpression);
        j = k;
      } finally {
        if (j != 0) {
          this.a.a(bSHBinaryExpression, 2);
          b(bSHBinaryExpression);
        } 
      } 
    } 
  }
  
  public final void Statement() {
    int j;
    if (v(2)) {
      LabeledStatement();
      return;
    } 
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    switch (j) {
      default:
        if (a()) {
          ForStatement();
          return;
        } 
        break;
      case 78:
        EmptyStatement();
        return;
      case 74:
        Block();
        return;
      case 59:
        WhileStatement();
        return;
      case 50:
        SwitchStatement();
        return;
      case 32:
        IfStatement();
        return;
      case 21:
        DoStatement();
        return;
      case 11:
      case 14:
      case 17:
      case 22:
      case 26:
      case 29:
      case 36:
      case 38:
      case 40:
      case 41:
      case 47:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
      case 69:
      case 72:
      case 86:
      case 87:
      case 100:
      case 101:
      case 102:
      case 103:
        StatementExpression();
        F(78);
        return;
    } 
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    if (j != 12) {
      if (j != 19) {
        if (j != 30) {
          if (j != 46) {
            if (j != 51) {
              if (j != 53) {
                if (j != 56) {
                  F(-1);
                  throw new ParseException();
                } 
                TryStatement();
                return;
              } 
              ThrowStatement();
              return;
            } 
            SynchronizedStatement();
            return;
          } 
          ReturnStatement();
          return;
        } 
        EnhancedForStatement();
        return;
      } 
      ContinueStatement();
      return;
    } 
    BreakStatement();
  }
  
  public final void StatementExpression() { Expression(); }
  
  public final void StatementExpressionList() {
    boolean bool;
    bSHStatementExpressionList = new BSHStatementExpressionList(34);
    this.a.c(bSHStatementExpressionList);
    a(bSHStatementExpressionList);
    try {
      StatementExpression();
      while (true) {
        if (this.d == -1) {
          bool = dq();
        } else {
          bool = this.d;
        } 
        if (bool != 79) {
          this.a.a(bSHStatementExpressionList, true);
          return;
        } 
        F(79);
        StatementExpression();
      } 
    } catch (Throwable null) {
      this.a.b(bSHStatementExpressionList);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHStatementExpressionList, true);
      b(bSHStatementExpressionList);
    } 
    throw throwable;
  }
  
  public final void SwitchLabel() {
    bSHSwitchLabel = new BSHSwitchLabel(28);
    this.a.c(bSHSwitchLabel);
    a(bSHSwitchLabel);
    b1 = 0;
    j = 0;
    try {
      if (this.d == -1) {
        bool = dq();
      } else {
        bool = this.d;
      } 
      if (bool != 15) {
        if (bool != 20) {
          F(-1);
          throw new ParseException();
        } 
        F(20);
        F(89);
        this.a.a(bSHSwitchLabel, true);
        try {
          b(bSHSwitchLabel);
          bSHSwitchLabel.a = true;
        } catch (Throwable null) {
        
        } finally {
          throwable = null;
        } 
      } else {
        F(15);
        Expression();
        F(89);
        bool = true;
      } 
      return;
    } catch (Throwable null) {
      bool = true;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHSwitchLabel, true);
      b(bSHSwitchLabel);
    } 
    throw throwable;
  }
  
  public final void SwitchStatement() {
    boolean bool;
    bSHSwitchStatement = new BSHSwitchStatement(27);
    this.a.c(bSHSwitchStatement);
    a(bSHSwitchStatement);
    try {
      F(50);
      F(72);
      Expression();
      F(73);
      F(74);
      while (true) {
        if (this.d == -1) {
          bool = dq();
        } else {
          bool = this.d;
        } 
        if (bool != 15 && bool != 20) {
          F(75);
          this.a.a(bSHSwitchStatement, true);
          return;
        } 
        SwitchLabel();
        while (C(1))
          BlockStatement(); 
      } 
    } catch (Throwable null) {
      this.a.b(bSHSwitchStatement);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHSwitchStatement, true);
      b(bSHSwitchStatement);
    } 
    throw throwable;
  }
  
  public final void SynchronizedStatement() { // Byte code:
    //   0: new bsh/BSHBlock
    //   3: dup
    //   4: bipush #25
    //   6: invokespecial <init> : (I)V
    //   9: astore #5
    //   11: aload_0
    //   12: getfield a : Lbsh/JJTParserState;
    //   15: aload #5
    //   17: invokevirtual c : (Lbsh/Node;)V
    //   20: aload_0
    //   21: aload #5
    //   23: invokevirtual a : (Lbsh/Node;)V
    //   26: iconst_0
    //   27: istore_3
    //   28: iconst_0
    //   29: istore_2
    //   30: aload_0
    //   31: bipush #51
    //   33: invokespecial F : (I)Lbsh/Token;
    //   36: pop
    //   37: aload_0
    //   38: bipush #72
    //   40: invokespecial F : (I)Lbsh/Token;
    //   43: pop
    //   44: aload_0
    //   45: invokevirtual Expression : ()V
    //   48: aload_0
    //   49: bipush #73
    //   51: invokespecial F : (I)Lbsh/Token;
    //   54: pop
    //   55: aload_0
    //   56: invokevirtual Block : ()V
    //   59: aload_0
    //   60: getfield a : Lbsh/JJTParserState;
    //   63: aload #5
    //   65: iconst_1
    //   66: invokevirtual a : (Lbsh/Node;Z)V
    //   69: iload_3
    //   70: istore_1
    //   71: aload_0
    //   72: aload #5
    //   74: invokevirtual b : (Lbsh/Node;)V
    //   77: iload_3
    //   78: istore_1
    //   79: aload #5
    //   81: iconst_1
    //   82: putfield isSynchronized : Z
    //   85: return
    //   86: astore #4
    //   88: iconst_0
    //   89: istore_1
    //   90: goto -> 104
    //   93: astore #4
    //   95: iconst_1
    //   96: istore_1
    //   97: goto -> 176
    //   100: astore #4
    //   102: iconst_1
    //   103: istore_1
    //   104: iload_1
    //   105: ifeq -> 120
    //   108: aload_0
    //   109: getfield a : Lbsh/JJTParserState;
    //   112: aload #5
    //   114: invokevirtual b : (Lbsh/Node;)V
    //   117: goto -> 130
    //   120: aload_0
    //   121: getfield a : Lbsh/JJTParserState;
    //   124: invokevirtual c : ()Lbsh/Node;
    //   127: pop
    //   128: iload_1
    //   129: istore_2
    //   130: iload_2
    //   131: istore_1
    //   132: aload #4
    //   134: instanceof java/lang/RuntimeException
    //   137: ifeq -> 148
    //   140: iload_2
    //   141: istore_1
    //   142: aload #4
    //   144: checkcast java/lang/RuntimeException
    //   147: athrow
    //   148: iload_2
    //   149: istore_1
    //   150: aload #4
    //   152: instanceof bsh/ParseException
    //   155: ifeq -> 166
    //   158: iload_2
    //   159: istore_1
    //   160: aload #4
    //   162: checkcast bsh/ParseException
    //   165: athrow
    //   166: iload_2
    //   167: istore_1
    //   168: aload #4
    //   170: checkcast java/lang/Error
    //   173: athrow
    //   174: astore #4
    //   176: iload_1
    //   177: ifeq -> 196
    //   180: aload_0
    //   181: getfield a : Lbsh/JJTParserState;
    //   184: aload #5
    //   186: iconst_1
    //   187: invokevirtual a : (Lbsh/Node;Z)V
    //   190: aload_0
    //   191: aload #5
    //   193: invokevirtual b : (Lbsh/Node;)V
    //   196: aload #4
    //   198: athrow
    //   199: astore #4
    //   201: goto -> 176
    // Exception table:
    //   from	to	target	type
    //   30	69	100	java/lang/Throwable
    //   30	69	93	finally
    //   71	77	86	java/lang/Throwable
    //   71	77	174	finally
    //   79	85	86	java/lang/Throwable
    //   79	85	174	finally
    //   108	117	199	finally
    //   120	128	199	finally
    //   132	140	174	finally
    //   142	148	174	finally
    //   150	158	174	finally
    //   160	166	174	finally
    //   168	174	174	finally }
  
  public final void ThrowStatement() {
    boolean bool;
    bSHThrowStatement = new BSHThrowStatement(36);
    this.a.c(bSHThrowStatement);
    a(bSHThrowStatement);
    try {
      F(53);
      Expression();
      F(78);
      this.a.a(bSHThrowStatement, true);
      return;
    } catch (Throwable null) {
      this.a.b(bSHThrowStatement);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHThrowStatement, true);
      b(bSHThrowStatement);
    } 
    throw throwable;
  }
  
  public final void TryStatement() { // Byte code:
    //   0: new bsh/BSHTryStatement
    //   3: dup
    //   4: bipush #37
    //   6: invokespecial <init> : (I)V
    //   9: astore #6
    //   11: aload_0
    //   12: getfield a : Lbsh/JJTParserState;
    //   15: aload #6
    //   17: invokevirtual c : (Lbsh/Node;)V
    //   20: aload_0
    //   21: aload #6
    //   23: invokevirtual a : (Lbsh/Node;)V
    //   26: iconst_0
    //   27: istore #4
    //   29: iconst_0
    //   30: istore_3
    //   31: aload_0
    //   32: bipush #56
    //   34: invokespecial F : (I)Lbsh/Token;
    //   37: pop
    //   38: aload_0
    //   39: invokevirtual Block : ()V
    //   42: iconst_0
    //   43: istore_1
    //   44: aload_0
    //   45: getfield d : I
    //   48: iconst_m1
    //   49: if_icmpne -> 60
    //   52: aload_0
    //   53: invokespecial dq : ()I
    //   56: istore_2
    //   57: goto -> 65
    //   60: aload_0
    //   61: getfield d : I
    //   64: istore_2
    //   65: iload_2
    //   66: bipush #16
    //   68: if_icmpeq -> 147
    //   71: aload_0
    //   72: getfield d : I
    //   75: iconst_m1
    //   76: if_icmpne -> 87
    //   79: aload_0
    //   80: invokespecial dq : ()I
    //   83: istore_2
    //   84: goto -> 289
    //   87: aload_0
    //   88: getfield d : I
    //   91: istore_2
    //   92: goto -> 289
    //   95: aload_0
    //   96: bipush #28
    //   98: invokespecial F : (I)Lbsh/Token;
    //   101: pop
    //   102: aload_0
    //   103: invokevirtual Block : ()V
    //   106: iconst_1
    //   107: istore_2
    //   108: aload_0
    //   109: getfield a : Lbsh/JJTParserState;
    //   112: aload #6
    //   114: iconst_1
    //   115: invokevirtual a : (Lbsh/Node;Z)V
    //   118: iload #4
    //   120: istore_1
    //   121: aload_0
    //   122: aload #6
    //   124: invokevirtual b : (Lbsh/Node;)V
    //   127: iload_2
    //   128: ifne -> 139
    //   131: iload #4
    //   133: istore_1
    //   134: aload_0
    //   135: invokevirtual generateParseException : ()Lbsh/ParseException;
    //   138: athrow
    //   139: return
    //   140: astore #5
    //   142: iconst_0
    //   143: istore_1
    //   144: goto -> 192
    //   147: aload_0
    //   148: bipush #16
    //   150: invokespecial F : (I)Lbsh/Token;
    //   153: pop
    //   154: aload_0
    //   155: bipush #72
    //   157: invokespecial F : (I)Lbsh/Token;
    //   160: pop
    //   161: aload_0
    //   162: invokevirtual FormalParameter : ()V
    //   165: aload_0
    //   166: bipush #73
    //   168: invokespecial F : (I)Lbsh/Token;
    //   171: pop
    //   172: aload_0
    //   173: invokevirtual Block : ()V
    //   176: iconst_1
    //   177: istore_1
    //   178: goto -> 44
    //   181: astore #5
    //   183: iconst_1
    //   184: istore_1
    //   185: goto -> 266
    //   188: astore #5
    //   190: iconst_1
    //   191: istore_1
    //   192: iload_1
    //   193: ifeq -> 210
    //   196: aload_0
    //   197: getfield a : Lbsh/JJTParserState;
    //   200: aload #6
    //   202: invokevirtual b : (Lbsh/Node;)V
    //   205: iload_3
    //   206: istore_2
    //   207: goto -> 220
    //   210: aload_0
    //   211: getfield a : Lbsh/JJTParserState;
    //   214: invokevirtual c : ()Lbsh/Node;
    //   217: pop
    //   218: iload_1
    //   219: istore_2
    //   220: iload_2
    //   221: istore_1
    //   222: aload #5
    //   224: instanceof java/lang/RuntimeException
    //   227: ifeq -> 238
    //   230: iload_2
    //   231: istore_1
    //   232: aload #5
    //   234: checkcast java/lang/RuntimeException
    //   237: athrow
    //   238: iload_2
    //   239: istore_1
    //   240: aload #5
    //   242: instanceof bsh/ParseException
    //   245: ifeq -> 256
    //   248: iload_2
    //   249: istore_1
    //   250: aload #5
    //   252: checkcast bsh/ParseException
    //   255: athrow
    //   256: iload_2
    //   257: istore_1
    //   258: aload #5
    //   260: checkcast java/lang/Error
    //   263: athrow
    //   264: astore #5
    //   266: iload_1
    //   267: ifeq -> 286
    //   270: aload_0
    //   271: getfield a : Lbsh/JJTParserState;
    //   274: aload #6
    //   276: iconst_1
    //   277: invokevirtual a : (Lbsh/Node;Z)V
    //   280: aload_0
    //   281: aload #6
    //   283: invokevirtual b : (Lbsh/Node;)V
    //   286: aload #5
    //   288: athrow
    //   289: iload_2
    //   290: bipush #28
    //   292: if_icmpeq -> 95
    //   295: iload_1
    //   296: istore_2
    //   297: goto -> 108
    //   300: astore #5
    //   302: goto -> 266
    // Exception table:
    //   from	to	target	type
    //   31	42	188	java/lang/Throwable
    //   31	42	181	finally
    //   44	57	188	java/lang/Throwable
    //   44	57	181	finally
    //   60	65	188	java/lang/Throwable
    //   60	65	181	finally
    //   71	84	188	java/lang/Throwable
    //   71	84	181	finally
    //   87	92	188	java/lang/Throwable
    //   87	92	181	finally
    //   95	106	188	java/lang/Throwable
    //   95	106	181	finally
    //   108	118	188	java/lang/Throwable
    //   108	118	181	finally
    //   121	127	140	java/lang/Throwable
    //   121	127	264	finally
    //   134	139	140	java/lang/Throwable
    //   134	139	264	finally
    //   147	176	188	java/lang/Throwable
    //   147	176	181	finally
    //   196	205	300	finally
    //   210	218	300	finally
    //   222	230	264	finally
    //   232	238	264	finally
    //   240	248	264	finally
    //   250	256	264	finally
    //   258	264	264	finally }
  
  public final void Type() {
    boolean bool;
    bSHType = new BSHType(9);
    this.a.c(bSHType);
    a(bSHType);
    try {
      if (this.d == -1) {
        bool = dq();
      } else {
        bool = this.d;
      } 
      if (bool != 11 && bool != 14 && bool != 17 && bool != 22 && bool != 29 && bool != 36 && bool != 38 && bool != 47) {
        if (bool != 69) {
          F(-1);
          throw new ParseException();
        } 
        AmbiguousName();
      } else {
        PrimitiveType();
      } 
      while (f(2)) {
        F(76);
        F(77);
        bSHType.addArrayDimension();
      } 
      this.a.a(bSHType, true);
      return;
    } catch (Throwable null) {
      this.a.b(bSHType);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHType, true);
      b(bSHType);
    } 
    throw throwable;
  }
  
  public final void TypedVariableDeclaration() { // Byte code:
    //   0: new bsh/BSHTypedVariableDeclaration
    //   3: dup
    //   4: bipush #33
    //   6: invokespecial <init> : (I)V
    //   9: astore #5
    //   11: aload_0
    //   12: getfield a : Lbsh/JJTParserState;
    //   15: aload #5
    //   17: invokevirtual c : (Lbsh/Node;)V
    //   20: aload_0
    //   21: aload #5
    //   23: invokevirtual a : (Lbsh/Node;)V
    //   26: iconst_0
    //   27: istore_3
    //   28: iconst_0
    //   29: istore_2
    //   30: aload_0
    //   31: iconst_2
    //   32: iconst_0
    //   33: invokevirtual Modifiers : (IZ)Lbsh/Modifiers;
    //   36: astore #4
    //   38: aload_0
    //   39: invokevirtual Type : ()V
    //   42: aload_0
    //   43: invokevirtual VariableDeclarator : ()V
    //   46: aload_0
    //   47: getfield d : I
    //   50: iconst_m1
    //   51: if_icmpne -> 62
    //   54: aload_0
    //   55: invokespecial dq : ()I
    //   58: istore_1
    //   59: goto -> 67
    //   62: aload_0
    //   63: getfield d : I
    //   66: istore_1
    //   67: iload_1
    //   68: bipush #79
    //   70: if_icmpeq -> 108
    //   73: aload_0
    //   74: getfield a : Lbsh/JJTParserState;
    //   77: aload #5
    //   79: iconst_1
    //   80: invokevirtual a : (Lbsh/Node;Z)V
    //   83: iload_3
    //   84: istore_1
    //   85: aload_0
    //   86: aload #5
    //   88: invokevirtual b : (Lbsh/Node;)V
    //   91: iload_3
    //   92: istore_1
    //   93: aload #5
    //   95: aload #4
    //   97: putfield modifiers : Lbsh/Modifiers;
    //   100: return
    //   101: astore #4
    //   103: iconst_0
    //   104: istore_1
    //   105: goto -> 129
    //   108: aload_0
    //   109: bipush #79
    //   111: invokespecial F : (I)Lbsh/Token;
    //   114: pop
    //   115: goto -> 42
    //   118: astore #4
    //   120: iconst_1
    //   121: istore_1
    //   122: goto -> 201
    //   125: astore #4
    //   127: iconst_1
    //   128: istore_1
    //   129: iload_1
    //   130: ifeq -> 145
    //   133: aload_0
    //   134: getfield a : Lbsh/JJTParserState;
    //   137: aload #5
    //   139: invokevirtual b : (Lbsh/Node;)V
    //   142: goto -> 155
    //   145: aload_0
    //   146: getfield a : Lbsh/JJTParserState;
    //   149: invokevirtual c : ()Lbsh/Node;
    //   152: pop
    //   153: iload_1
    //   154: istore_2
    //   155: iload_2
    //   156: istore_1
    //   157: aload #4
    //   159: instanceof java/lang/RuntimeException
    //   162: ifeq -> 173
    //   165: iload_2
    //   166: istore_1
    //   167: aload #4
    //   169: checkcast java/lang/RuntimeException
    //   172: athrow
    //   173: iload_2
    //   174: istore_1
    //   175: aload #4
    //   177: instanceof bsh/ParseException
    //   180: ifeq -> 191
    //   183: iload_2
    //   184: istore_1
    //   185: aload #4
    //   187: checkcast bsh/ParseException
    //   190: athrow
    //   191: iload_2
    //   192: istore_1
    //   193: aload #4
    //   195: checkcast java/lang/Error
    //   198: athrow
    //   199: astore #4
    //   201: iload_1
    //   202: ifeq -> 221
    //   205: aload_0
    //   206: getfield a : Lbsh/JJTParserState;
    //   209: aload #5
    //   211: iconst_1
    //   212: invokevirtual a : (Lbsh/Node;Z)V
    //   215: aload_0
    //   216: aload #5
    //   218: invokevirtual b : (Lbsh/Node;)V
    //   221: aload #4
    //   223: athrow
    //   224: astore #4
    //   226: goto -> 201
    // Exception table:
    //   from	to	target	type
    //   30	42	125	java/lang/Throwable
    //   30	42	118	finally
    //   42	59	125	java/lang/Throwable
    //   42	59	118	finally
    //   62	67	125	java/lang/Throwable
    //   62	67	118	finally
    //   73	83	125	java/lang/Throwable
    //   73	83	118	finally
    //   85	91	101	java/lang/Throwable
    //   85	91	199	finally
    //   93	100	101	java/lang/Throwable
    //   93	100	199	finally
    //   108	115	125	java/lang/Throwable
    //   108	115	118	finally
    //   133	142	224	finally
    //   145	153	224	finally
    //   157	165	199	finally
    //   167	173	199	finally
    //   175	183	199	finally
    //   185	191	199	finally
    //   193	199	199	finally }
  
  public final void UnaryExpression() {
    int j;
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    switch (j) {
      default:
        F(-1);
        throw new ParseException();
      case 102:
      case 103:
        if (this.d == -1) {
          j = dq();
        } else {
          j = this.d;
        } 
        switch (j) {
          default:
            F(-1);
            throw new ParseException();
          case 103:
            j = 103;
            break;
          case 102:
            j = 102;
            break;
        } 
        token1 = F(j);
        UnaryExpression();
        bSHUnaryExpression = new BSHUnaryExpression(16);
        this.a.c(bSHUnaryExpression);
        a(bSHUnaryExpression);
        try {
          this.a.a(bSHUnaryExpression, 1);
          j = 0;
        } finally {
          token1 = null;
        } 
        if (j != 0) {
          this.a.a(bSHUnaryExpression, 1);
          b(bSHUnaryExpression);
        } 
        throw token1;
      case 101:
        PreDecrementExpression();
        return;
      case 100:
        PreIncrementExpression();
        return;
      case 11:
      case 14:
      case 17:
      case 22:
      case 26:
      case 29:
      case 36:
      case 38:
      case 40:
      case 41:
      case 47:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
      case 69:
      case 72:
      case 86:
      case 87:
        break;
    } 
    UnaryExpressionNotPlusMinus();
  }
  
  public final void UnaryExpressionNotPlusMinus() {
    int j;
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    switch (j) {
      default:
        if (i(2147483647)) {
          CastExpression();
          return;
        } 
        break;
      case 86:
      case 87:
        if (this.d == -1) {
          j = dq();
        } else {
          j = this.d;
        } 
        switch (j) {
          default:
            F(-1);
            throw new ParseException();
          case 87:
            j = 87;
            break;
          case 86:
            j = 86;
            break;
        } 
        token1 = F(j);
        UnaryExpression();
        bSHUnaryExpression = new BSHUnaryExpression(16);
        this.a.c(bSHUnaryExpression);
        a(bSHUnaryExpression);
        try {
          this.a.a(bSHUnaryExpression, 1);
          j = 0;
        } finally {
          token1 = null;
        } 
        if (j != 0) {
          this.a.a(bSHUnaryExpression, 1);
          b(bSHUnaryExpression);
        } 
        throw token1;
    } 
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    switch (j) {
      default:
        F(-1);
        throw new ParseException();
      case 11:
      case 14:
      case 17:
      case 22:
      case 26:
      case 29:
      case 36:
      case 38:
      case 40:
      case 41:
      case 47:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
      case 69:
      case 72:
        break;
    } 
    PostfixExpression();
  }
  
  public final void VariableDeclarator() { // Byte code:
    //   0: new bsh/BSHVariableDeclarator
    //   3: dup
    //   4: iconst_5
    //   5: invokespecial <init> : (I)V
    //   8: astore #5
    //   10: aload_0
    //   11: getfield a : Lbsh/JJTParserState;
    //   14: aload #5
    //   16: invokevirtual c : (Lbsh/Node;)V
    //   19: aload_0
    //   20: aload #5
    //   22: invokevirtual a : (Lbsh/Node;)V
    //   25: iconst_0
    //   26: istore_3
    //   27: iconst_0
    //   28: istore_2
    //   29: aload_0
    //   30: bipush #69
    //   32: invokespecial F : (I)Lbsh/Token;
    //   35: astore #4
    //   37: aload_0
    //   38: getfield d : I
    //   41: iconst_m1
    //   42: if_icmpne -> 53
    //   45: aload_0
    //   46: invokespecial dq : ()I
    //   49: istore_1
    //   50: goto -> 216
    //   53: aload_0
    //   54: getfield d : I
    //   57: istore_1
    //   58: goto -> 216
    //   61: aload_0
    //   62: bipush #81
    //   64: invokespecial F : (I)Lbsh/Token;
    //   67: pop
    //   68: aload_0
    //   69: invokevirtual VariableInitializer : ()V
    //   72: aload_0
    //   73: getfield a : Lbsh/JJTParserState;
    //   76: aload #5
    //   78: iconst_1
    //   79: invokevirtual a : (Lbsh/Node;Z)V
    //   82: iload_3
    //   83: istore_1
    //   84: aload_0
    //   85: aload #5
    //   87: invokevirtual b : (Lbsh/Node;)V
    //   90: iload_3
    //   91: istore_1
    //   92: aload #5
    //   94: aload #4
    //   96: getfield image : Ljava/lang/String;
    //   99: putfield name : Ljava/lang/String;
    //   102: return
    //   103: astore #4
    //   105: iconst_0
    //   106: istore_1
    //   107: goto -> 121
    //   110: astore #4
    //   112: iconst_1
    //   113: istore_1
    //   114: goto -> 193
    //   117: astore #4
    //   119: iconst_1
    //   120: istore_1
    //   121: iload_1
    //   122: ifeq -> 137
    //   125: aload_0
    //   126: getfield a : Lbsh/JJTParserState;
    //   129: aload #5
    //   131: invokevirtual b : (Lbsh/Node;)V
    //   134: goto -> 147
    //   137: aload_0
    //   138: getfield a : Lbsh/JJTParserState;
    //   141: invokevirtual c : ()Lbsh/Node;
    //   144: pop
    //   145: iload_1
    //   146: istore_2
    //   147: iload_2
    //   148: istore_1
    //   149: aload #4
    //   151: instanceof java/lang/RuntimeException
    //   154: ifeq -> 165
    //   157: iload_2
    //   158: istore_1
    //   159: aload #4
    //   161: checkcast java/lang/RuntimeException
    //   164: athrow
    //   165: iload_2
    //   166: istore_1
    //   167: aload #4
    //   169: instanceof bsh/ParseException
    //   172: ifeq -> 183
    //   175: iload_2
    //   176: istore_1
    //   177: aload #4
    //   179: checkcast bsh/ParseException
    //   182: athrow
    //   183: iload_2
    //   184: istore_1
    //   185: aload #4
    //   187: checkcast java/lang/Error
    //   190: athrow
    //   191: astore #4
    //   193: iload_1
    //   194: ifeq -> 213
    //   197: aload_0
    //   198: getfield a : Lbsh/JJTParserState;
    //   201: aload #5
    //   203: iconst_1
    //   204: invokevirtual a : (Lbsh/Node;Z)V
    //   207: aload_0
    //   208: aload #5
    //   210: invokevirtual b : (Lbsh/Node;)V
    //   213: aload #4
    //   215: athrow
    //   216: iload_1
    //   217: bipush #81
    //   219: if_icmpeq -> 61
    //   222: goto -> 72
    //   225: astore #4
    //   227: goto -> 193
    // Exception table:
    //   from	to	target	type
    //   29	50	117	java/lang/Throwable
    //   29	50	110	finally
    //   53	58	117	java/lang/Throwable
    //   53	58	110	finally
    //   61	72	117	java/lang/Throwable
    //   61	72	110	finally
    //   72	82	117	java/lang/Throwable
    //   72	82	110	finally
    //   84	90	103	java/lang/Throwable
    //   84	90	191	finally
    //   92	102	103	java/lang/Throwable
    //   92	102	191	finally
    //   125	134	225	finally
    //   137	145	225	finally
    //   149	157	191	finally
    //   159	165	191	finally
    //   167	175	191	finally
    //   177	183	191	finally
    //   185	191	191	finally }
  
  public final void VariableInitializer() {
    int j;
    if (this.d == -1) {
      j = dq();
    } else {
      j = this.d;
    } 
    switch (j) {
      default:
        F(-1);
        throw new ParseException();
      case 74:
        ArrayInitializer();
        return;
      case 11:
      case 14:
      case 17:
      case 22:
      case 26:
      case 29:
      case 36:
      case 38:
      case 40:
      case 41:
      case 47:
      case 55:
      case 57:
      case 60:
      case 64:
      case 66:
      case 67:
      case 69:
      case 72:
      case 86:
      case 87:
      case 100:
      case 101:
      case 102:
      case 103:
        break;
    } 
    Expression();
  }
  
  public final void VoidLiteral() { F(57); }
  
  public final void WhileStatement() {
    boolean bool;
    bSHWhileStatement = new BSHWhileStatement(30);
    this.a.c(bSHWhileStatement);
    a(bSHWhileStatement);
    try {
      F(59);
      F(72);
      Expression();
      F(73);
      Statement();
      this.a.a(bSHWhileStatement, true);
      return;
    } catch (Throwable null) {
      this.a.b(bSHWhileStatement);
      bool = false;
    } finally {
      throwable = null;
    } 
    if (bool) {
      this.a.a(bSHWhileStatement, true);
      b(bSHWhileStatement);
    } 
    throw throwable;
  }
  
  ParseException a(String paramString) {
    String str = this.token;
    int j = str.beginLine;
    int k = str.beginColumn;
    if (str.kind == 0) {
      str = ParserConstants.tokenImage[0];
    } else {
      str = str.image;
    } 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Parse error at line ");
    stringBuffer.append(j);
    stringBuffer.append(", column ");
    stringBuffer.append(k);
    stringBuffer.append(" : ");
    stringBuffer.append(paramString);
    return new ParseException(stringBuffer.toString());
  }
  
  void a(Node paramNode) { ((SimpleNode)paramNode).j = getToken(1); }
  
  void a(Reader paramReader) { ReInit(paramReader); }
  
  boolean a() {
    if ((getToken(1)).kind != 30)
      return false; 
    byte b1 = 3;
    if ((getToken(2)).kind != 72)
      return false; 
    while (true) {
      int j = (getToken(b1)).kind;
      if (j != 0) {
        if (j != 78) {
          if (j != 89) {
            b1++;
            continue;
          } 
          return false;
        } 
        return true;
      } 
      break;
    } 
    return false;
  }
  
  void b(Node paramNode) { ((SimpleNode)paramNode).k = getToken(0); }
  
  void b(Reader paramReader) { this.c.ReInit(paramReader, this.c.getEndLine(), this.c.getEndColumn()); }
  
  public final void disable_tracing() {}
  
  public final void enable_tracing() {}
  
  public ParseException generateParseException() {
    String str = this.token.next;
    int j = str.beginLine;
    int k = str.beginColumn;
    if (str.kind == 0) {
      str = ParserConstants.tokenImage[0];
    } else {
      str = str.image;
    } 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Parse error at line ");
    stringBuffer.append(j);
    stringBuffer.append(", column ");
    stringBuffer.append(k);
    stringBuffer.append(".  Encountered: ");
    stringBuffer.append(str);
    return new ParseException(stringBuffer.toString());
  }
  
  public final Token getNextToken() {
    if (this.token.next != null) {
      this.token = this.token.next;
    } else {
      Token token1 = this.token;
      Token token2 = this.token_source.getNextToken();
      token1.next = token2;
      this.token = token2;
    } 
    this.d = -1;
    return this.token;
  }
  
  public final Token getToken(int paramInt) {
    Token token1;
    if (this.lookingAhead) {
      token1 = this.e;
    } else {
      token1 = this.token;
    } 
    for (byte b1 = 0;; b1++) {
      if (b1 >= paramInt)
        return token1; 
      if (token1.next != null) {
        token1 = token1.next;
      } else {
        Token token2 = this.token_source.getNextToken();
        token1.next = token2;
        token1 = token2;
      } 
    } 
  }
  
  public SimpleNode popNode() { return (this.a.d() > 0) ? (SimpleNode)this.a.c() : null; }
  
  public void setRetainComments(boolean paramBoolean) { this.b = paramBoolean; }
  
  private static final class LookaheadSuccess extends Error {
    private LookaheadSuccess() {}
    
    LookaheadSuccess(Parser$1 param1Parser$1) { this(); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Parser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */