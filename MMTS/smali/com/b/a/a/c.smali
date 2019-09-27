.class public Lcom/b/a/a/c;
.super Landroid/view/View;

# interfaces
.implements Lcom/b/a/b/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/c$b;,
        Lcom/b/a/a/c$a;,
        Lcom/b/a/a/c$c;
    }
.end annotation


# static fields
.field public static final SCROLL_DOWN:I = 0x1

.field public static final SCROLL_LEFT:I = 0x2

.field public static final SCROLL_RIGHT:I = 0x3

.field public static final SCROLL_UP:I = 0x0

.field protected static a:F = 0.75f

.field protected static b:F = 0.5f

.field protected static c:I = 0x4

.field protected static d:I = 0x10

.field protected static e:J = 0xfaL

.field private static u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Landroid/graphics/Paint;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Lcom/b/a/a/b;

.field private G:Landroid/text/ClipboardManager;

.field private H:F

.field private I:I

.field private J:I

.field private K:Lcom/b/a/a/f;

.field private L:I

.field private M:Landroid/graphics/Typeface;

.field private N:Landroid/graphics/Typeface;

.field private O:Landroid/graphics/Typeface;

.field private P:C

.field private Q:Z

.field private R:Landroid/graphics/Paint;

.field private S:I

.field private final T:Ljava/lang/Runnable;

.field private final U:Ljava/lang/Runnable;

.field private final V:Ljava/lang/Runnable;

.field private final W:Ljava/lang/Runnable;

.field private aa:I

.field private ab:J

.field private ac:Z

.field private ad:Landroid/view/MotionEvent;

.field private ae:F

.field private af:F

.field protected f:Z

.field protected g:Lcom/b/a/a/g;

.field protected h:Lcom/b/a/b/f;

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Lcom/b/a/b/b;

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:I

.field protected r:Z

.field protected s:Lcom/b/a/a/a;

.field protected t:Z

.field private final v:Landroid/widget/Scroller;

.field private w:Lcom/b/a/a/c$a;

.field private x:Lcom/b/a/a/c$b;

.field private y:Lcom/b/a/b/n;

.field private z:Lcom/b/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00c7\u0106\u010c"

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u010e"

    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u011e"

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u0141"

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00d1\u0143\u0147"

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u0158"

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u015a\u0160\u015e"

    const/16 v2, 0x53

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u0164"

    const/16 v2, 0x54

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    const/16 v2, 0x55

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00dd\u0178"

    const/16 v2, 0x59

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u0179\u017b\u017d"

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00e7\u0107\u010d"

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u010f"

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u011f"

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    const/16 v2, 0x69

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u0142"

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00f1\u0144\u0148"

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u0159"

    const/16 v2, 0x72

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00a7\u00df\u015b\u0161\u015f"

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u0165"

    const/16 v2, 0x74

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    const/16 v2, 0x75

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00fd\u00ff"

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u017a\u017c\u017e"

    const/16 v2, 0x7a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    const v2, 0xef01

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\\"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00b9\u00bd\u2153\u00bc\u215b"

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00b2\u2154"

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00b3\u00be\u215c"

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u2074"

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u215d"

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u215e"

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u207f\u2205"

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u2030"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u2020\u2021"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u2013\u2014"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00b1"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "[{<"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "]}>"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00a1"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u201c\u201d\u00ab\u00bb\u02dd"

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u00bf"

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u201a\u201e"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u2260\u2248\u221e"

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u2264\u00ab\u2039"

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    const-string v1, "\u2265\u00bb\u203a"

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/c;->f:Z

    iput v0, p0, Lcom/b/a/a/c;->i:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/b/a/a/c;->j:I

    iput v1, p0, Lcom/b/a/a/c;->k:I

    sget v1, Lcom/b/a/a/c;->c:I

    iput v1, p0, Lcom/b/a/a/c;->l:I

    new-instance v1, Lcom/b/a/b/d;

    invoke-direct {v1}, Lcom/b/a/b/d;-><init>()V

    iput-object v1, p0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    iput-boolean v0, p0, Lcom/b/a/a/c;->n:Z

    iput-boolean v0, p0, Lcom/b/a/a/c;->o:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/b/a/a/c;->p:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/b/a/a/c;->q:I

    iput-boolean v0, p0, Lcom/b/a/a/c;->r:Z

    iput-boolean v1, p0, Lcom/b/a/a/c;->t:Z

    iput v0, p0, Lcom/b/a/a/c;->A:I

    iput v0, p0, Lcom/b/a/a/c;->C:I

    iput v0, p0, Lcom/b/a/a/c;->D:I

    iput-boolean v0, p0, Lcom/b/a/a/c;->E:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/b/a/a/c;->H:F

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/b/a/a/c;->M:Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/b/a/a/c;->N:Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/a/c;->O:Landroid/graphics/Typeface;

    new-instance v1, Lcom/b/a/a/c$1;

    invoke-direct {v1, p0}, Lcom/b/a/a/c$1;-><init>(Lcom/b/a/a/c;)V

    iput-object v1, p0, Lcom/b/a/a/c;->T:Ljava/lang/Runnable;

    new-instance v1, Lcom/b/a/a/c$3;

    invoke-direct {v1, p0}, Lcom/b/a/a/c$3;-><init>(Lcom/b/a/a/c;)V

    iput-object v1, p0, Lcom/b/a/a/c;->U:Ljava/lang/Runnable;

    new-instance v1, Lcom/b/a/a/c$4;

    invoke-direct {v1, p0}, Lcom/b/a/a/c$4;-><init>(Lcom/b/a/a/c;)V

    iput-object v1, p0, Lcom/b/a/a/c;->V:Ljava/lang/Runnable;

    new-instance v1, Lcom/b/a/a/c$5;

    invoke-direct {v1, p0}, Lcom/b/a/a/c$5;-><init>(Lcom/b/a/a/c;)V

    iput-object v1, p0, Lcom/b/a/a/c;->W:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/b/a/a/c;->ac:Z

    new-instance v0, Lcom/b/a/b/f;

    invoke-direct {v0, p0}, Lcom/b/a/b/f;-><init>(Lcom/b/a/b/e$a;)V

    iput-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    new-instance v0, Lcom/b/a/a/g;

    invoke-direct {v0, p0}, Lcom/b/a/a/g;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/b/a/a/c;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/b/a/a/c;->f:Z

    iput p2, p0, Lcom/b/a/a/c;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/a/c;->j:I

    iput v0, p0, Lcom/b/a/a/c;->k:I

    sget v0, Lcom/b/a/a/c;->c:I

    iput v0, p0, Lcom/b/a/a/c;->l:I

    new-instance v0, Lcom/b/a/b/d;

    invoke-direct {v0}, Lcom/b/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    iput-boolean p2, p0, Lcom/b/a/a/c;->n:Z

    iput-boolean p2, p0, Lcom/b/a/a/c;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/c;->p:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/b/a/a/c;->q:I

    iput-boolean p2, p0, Lcom/b/a/a/c;->r:Z

    iput-boolean v0, p0, Lcom/b/a/a/c;->t:Z

    iput p2, p0, Lcom/b/a/a/c;->A:I

    iput p2, p0, Lcom/b/a/a/c;->C:I

    iput p2, p0, Lcom/b/a/a/c;->D:I

    iput-boolean p2, p0, Lcom/b/a/a/c;->E:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/b/a/a/c;->H:F

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/b/a/a/c;->M:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/b/a/a/c;->N:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/c;->O:Landroid/graphics/Typeface;

    new-instance v0, Lcom/b/a/a/c$1;

    invoke-direct {v0, p0}, Lcom/b/a/a/c$1;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->T:Ljava/lang/Runnable;

    new-instance v0, Lcom/b/a/a/c$3;

    invoke-direct {v0, p0}, Lcom/b/a/a/c$3;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->U:Ljava/lang/Runnable;

    new-instance v0, Lcom/b/a/a/c$4;

    invoke-direct {v0, p0}, Lcom/b/a/a/c$4;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->V:Ljava/lang/Runnable;

    new-instance v0, Lcom/b/a/a/c$5;

    invoke-direct {v0, p0}, Lcom/b/a/a/c$5;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->W:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/b/a/a/c;->ac:Z

    new-instance p2, Lcom/b/a/b/f;

    invoke-direct {p2, p0}, Lcom/b/a/b/f;-><init>(Lcom/b/a/b/e$a;)V

    iput-object p2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    new-instance p2, Lcom/b/a/a/g;

    invoke-direct {p2, p0}, Lcom/b/a/a/g;-><init>(Lcom/b/a/a/c;)V

    iput-object p2, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/b/a/a/c;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/b/a/a/c;->f:Z

    iput p2, p0, Lcom/b/a/a/c;->i:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/b/a/a/c;->j:I

    iput p3, p0, Lcom/b/a/a/c;->k:I

    sget p3, Lcom/b/a/a/c;->c:I

    iput p3, p0, Lcom/b/a/a/c;->l:I

    new-instance p3, Lcom/b/a/b/d;

    invoke-direct {p3}, Lcom/b/a/b/d;-><init>()V

    iput-object p3, p0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    iput-boolean p2, p0, Lcom/b/a/a/c;->n:Z

    iput-boolean p2, p0, Lcom/b/a/a/c;->o:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/b/a/a/c;->p:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/b/a/a/c;->q:I

    iput-boolean p2, p0, Lcom/b/a/a/c;->r:Z

    iput-boolean p3, p0, Lcom/b/a/a/c;->t:Z

    iput p2, p0, Lcom/b/a/a/c;->A:I

    iput p2, p0, Lcom/b/a/a/c;->C:I

    iput p2, p0, Lcom/b/a/a/c;->D:I

    iput-boolean p2, p0, Lcom/b/a/a/c;->E:Z

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/b/a/a/c;->H:F

    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p3, p0, Lcom/b/a/a/c;->M:Landroid/graphics/Typeface;

    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object p3, p0, Lcom/b/a/a/c;->N:Landroid/graphics/Typeface;

    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Lcom/b/a/a/c;->O:Landroid/graphics/Typeface;

    new-instance p3, Lcom/b/a/a/c$1;

    invoke-direct {p3, p0}, Lcom/b/a/a/c$1;-><init>(Lcom/b/a/a/c;)V

    iput-object p3, p0, Lcom/b/a/a/c;->T:Ljava/lang/Runnable;

    new-instance p3, Lcom/b/a/a/c$3;

    invoke-direct {p3, p0}, Lcom/b/a/a/c$3;-><init>(Lcom/b/a/a/c;)V

    iput-object p3, p0, Lcom/b/a/a/c;->U:Ljava/lang/Runnable;

    new-instance p3, Lcom/b/a/a/c$4;

    invoke-direct {p3, p0}, Lcom/b/a/a/c$4;-><init>(Lcom/b/a/a/c;)V

    iput-object p3, p0, Lcom/b/a/a/c;->V:Ljava/lang/Runnable;

    new-instance p3, Lcom/b/a/a/c$5;

    invoke-direct {p3, p0}, Lcom/b/a/a/c$5;-><init>(Lcom/b/a/a/c;)V

    iput-object p3, p0, Lcom/b/a/a/c;->W:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/b/a/a/c;->ac:Z

    new-instance p2, Lcom/b/a/b/f;

    invoke-direct {p2, p0}, Lcom/b/a/b/f;-><init>(Lcom/b/a/b/e$a;)V

    iput-object p2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    new-instance p2, Lcom/b/a/a/g;

    invoke-direct {p2, p0}, Lcom/b/a/a/g;-><init>(Lcom/b/a/a/c;)V

    iput-object p2, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/b/a/a/c;->f()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)I
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v0

    div-int/2addr p1, v0

    return p1
.end method

.method private a(Landroid/graphics/Canvas;CII)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/c;->getAdvance(CI)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v6

    if-gt v2, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/a/c;->getContentWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_3

    :cond_0
    sparse-switch v1, :sswitch_data_0

    iget-char v4, v0, Lcom/b/a/a/c;->P:C

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v9, v4, [C

    iget-char v4, v0, Lcom/b/a/a/c;->P:C

    aput-char v4, v9, v7

    aput-char v1, v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x2

    int-to-float v12, v2

    int-to-float v13, v3

    iget-object v14, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    iput-char v7, v0, Lcom/b/a/a/c;->P:C

    return v5

    :sswitch_0
    iput-char v1, v0, Lcom/b/a/a/c;->P:C

    return v5

    :sswitch_1
    iget-boolean v1, v0, Lcom/b/a/a/c;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    sget-object v7, Lcom/b/a/b/b$a;->i:Lcom/b/a/b/b$a;

    invoke-virtual {v6, v7}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    const-string v8, "\u00b7"

    goto :goto_0

    :cond_1
    const-string v7, " "

    const/4 v8, 0x0

    const/4 v9, 0x1

    int-to-float v10, v2

    int-to-float v11, v3

    iget-object v12, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return v5

    :sswitch_2
    iget-boolean v1, v0, Lcom/b/a/a/c;->o:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    sget-object v7, Lcom/b/a/b/b$a;->i:Lcom/b/a/b/b$a;

    invoke-virtual {v6, v7}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    const-string v8, "\u21b5"

    goto :goto_0

    :sswitch_3
    iget-boolean v1, v0, Lcom/b/a/a/c;->o:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    sget-object v7, Lcom/b/a/b/b$a;->i:Lcom/b/a/b/b$a;

    invoke-virtual {v6, v7}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    const-string v8, "\u00bb"

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    int-to-float v11, v2

    int-to-float v12, v3

    iget-object v13, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    return v5

    :cond_2
    new-array v4, v6, [C

    aput-char v1, v4, v7

    const/16 v17, 0x0

    const/16 v18, 0x1

    int-to-float v1, v2

    int-to-float v2, v3

    iget-object v3, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :cond_3
    return v5

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;II)I
    .locals 1

    int-to-float p3, p3

    int-to-float p4, p4

    iget-object v0, p0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    return-object p0
.end method

.method private a(C)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget v1, p0, Lcom/b/a/a/c;->i:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/b/a/b/f;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/b/a/a/c$a;->a(C)V

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/b/a/a/c$a;->a(C)V

    return-void
.end method

.method private a(FF)V
    .locals 3

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getMaxScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/a/c;->getMaxScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p2, v0, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/c;->smoothScrollTo(II)V

    return-void
.end method

.method private a(ILandroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/c;->isSelectText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/a/c;->h()V

    iget-object p2, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/b/a/a/c$a;->c(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c;->isSelectText()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/b/a/a/c;->i()V

    iget-object p2, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p2, v1}, Lcom/b/a/a/c$a;->c(Z)V

    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1, v1}, Lcom/b/a/a/c$a;->a(Z)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1, v1}, Lcom/b/a/a/c$a;->b(Z)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->c()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput p2, p0, Lcom/b/a/a/c;->I:I

    iput p3, p0, Lcom/b/a/a/c;->J:I

    iget-object v1, p0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    sget-object v2, Lcom/b/a/b/b$a;->g:Lcom/b/a/b/b$a;

    invoke-virtual {v1, v2}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/b/a/a/c;->a(Landroid/graphics/Canvas;III)V

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;III)V
    .locals 7

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    int-to-float v2, p2

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v1, p3

    int-to-float v3, v1

    add-int/2addr p2, p4

    int-to-float v4, p2

    iget p2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p3, p2

    int-to-float v5, p3

    iget-object v6, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->g(I)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/c;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/c;->d(II)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 8

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    new-instance v7, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v2, p0

    move-object v3, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    new-instance p1, Lcom/b/a/a/c$9;

    invoke-direct {p1, p0, v6, p2}, Lcom/b/a/a/c$9;-><init>(Lcom/b/a/a/c;Landroid/text/SpannableStringBuilder;Z)V

    invoke-virtual {v7, p1}, Landroid/text/method/CharacterPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v7}, Landroid/text/method/CharacterPickerDialog;->show()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)I
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v0

    div-int/2addr p1, v0

    return p1
.end method

.method private b(Landroid/graphics/Canvas;CII)I
    .locals 5

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/b/a/a/c;->getAdvance(C)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    sget-object v4, Lcom/b/a/b/b$a;->d:Lcom/b/a/b/b$a;

    invoke-virtual {v3, v4}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1, p3, p4, v1}, Lcom/b/a/a/c;->a(Landroid/graphics/Canvas;III)V

    iget-object v2, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    sget-object v4, Lcom/b/a/b/b$a;->c:Lcom/b/a/b/b$a;

    invoke-virtual {v3, v4}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/b/a/a/c;->a(Landroid/graphics/Canvas;CII)I

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return v1
.end method

.method static synthetic b(Lcom/b/a/a/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->T:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b(C)V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget v1, p0, Lcom/b/a/a/c;->i:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/b/a/b/f;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    sget-object v1, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->f()V

    invoke-direct {p0, v0, v2}, Lcom/b/a/a/c;->a(Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/c$a;->a(C)V

    return-void
.end method

.method static synthetic b(Lcom/b/a/a/c;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->h(I)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/b/a/a/c;I)I
    .locals 0

    iput p1, p0, Lcom/b/a/a/c;->A:I

    return p1
.end method

.method static synthetic c(Lcom/b/a/a/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->U:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p1}, Lcom/b/a/a/c;->a(Landroid/graphics/Canvas;)I

    move-result v8

    iget-object v1, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1, v8}, Lcom/b/a/b/f;->d(I)I

    move-result v9

    if-gez v9, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->length()I

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/a/c;->isWordWrap()Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1, v9}, Lcom/b/a/b/f;->c(I)I

    move-result v1

    add-int/2addr v1, v10

    :goto_0
    move v11, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v8, 0x1

    goto :goto_0

    :goto_1
    iget-boolean v1, v0, Lcom/b/a/a/c;->E:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v3}, Lcom/b/a/b/f;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/b/a/a/c;->D:I

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/b/a/a/c;->b(Landroid/graphics/Canvas;)I

    move-result v12

    invoke-virtual {v0, v8}, Lcom/b/a/a/c;->getPaintBaseline(I)I

    move-result v13

    iget-object v1, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->i()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v10

    const-string v2, "No spans to paint in TextWarrior.paint()"

    invoke-static {v1, v2}, Lcom/b/a/b/q;->a(ZLjava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lcom/b/a/b/m;

    invoke-direct {v1, v15, v15}, Lcom/b/a/b/m;-><init>(II)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/b/m;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v1}, Lcom/b/a/b/m;->a()I

    move-result v4

    add-int v5, v2, v4

    const/16 v16, 0x0

    if-ge v3, v6, :cond_4

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/b/m;

    move/from16 v18, v2

    move-object/from16 v17, v3

    goto :goto_3

    :cond_4
    move/from16 v18, v3

    move-object/from16 v17, v16

    :goto_3
    if-eqz v17, :cond_6

    if-le v5, v9, :cond_5

    goto :goto_4

    :cond_5
    move v2, v5

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto :goto_2

    :cond_6
    :goto_4
    invoke-virtual {v1}, Lcom/b/a/b/m;->b()I

    move-result v4

    invoke-virtual {v1}, Lcom/b/a/b/m;->b()I

    move-result v2

    const/16 v3, 0x1e

    if-eq v2, v10, :cond_8

    if-eq v2, v3, :cond_7

    iget-object v2, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/b/a/a/c;->M:Landroid/graphics/Typeface;

    :goto_5
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_6

    :cond_7
    iget-object v2, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/b/a/a/c;->O:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/b/a/a/c;->N:Landroid/graphics/Typeface;

    goto :goto_5

    :goto_6
    iget-object v2, v0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    invoke-virtual {v1}, Lcom/b/a/b/m;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/b/a/b/b;->a(I)I

    move-result v1

    iget-object v2, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->f()I

    move-result v3

    iget-boolean v1, v0, Lcom/b/a/a/c;->E:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    sget-object v15, Lcom/b/a/b/b$a;->i:Lcom/b/a/b/b$a;

    invoke-virtual {v2, v15}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/b/a/a/c;->D:I

    iget v2, v0, Lcom/b/a/a/c;->aa:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v1

    int-to-float v15, v1

    iget v1, v0, Lcom/b/a/a/c;->D:I

    iget v10, v0, Lcom/b/a/a/c;->aa:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v1, v10

    int-to-float v10, v1

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/a/c;->getHeight()I

    move-result v19

    add-int v1, v1, v19

    int-to-float v1, v1

    move/from16 v20, v6

    iget-object v6, v0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    move/from16 v19, v1

    move-object v1, v7

    move/from16 v21, v8

    move/from16 v22, v9

    const/16 v9, 0x1e

    move v8, v3

    move v3, v15

    move v15, v4

    move v4, v10

    move v10, v5

    move/from16 v5, v19

    move/from16 v23, v20

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_9
    move v15, v4

    move v10, v5

    move/from16 v23, v6

    move/from16 v21, v8

    move/from16 v22, v9

    const/16 v9, 0x1e

    move v8, v3

    :goto_7
    const/4 v1, 0x1

    if-eq v15, v1, :cond_b

    if-eq v15, v9, :cond_a

    iget-object v1, v0, Lcom/b/a/a/c;->M:Landroid/graphics/Typeface;

    goto :goto_8

    :cond_a
    iget-object v1, v0, Lcom/b/a/a/c;->O:Landroid/graphics/Typeface;

    goto :goto_8

    :cond_b
    iget-object v1, v0, Lcom/b/a/a/c;->N:Landroid/graphics/Typeface;

    :goto_8
    iget-object v2, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object v3, v1

    move/from16 v1, v21

    const/4 v2, 0x0

    :goto_9
    if-gt v1, v12, :cond_19

    iget-object v4, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v4, v1}, Lcom/b/a/b/f;->g(I)I

    move-result v4

    if-lt v1, v8, :cond_c

    goto/16 :goto_12

    :cond_c
    iget-boolean v5, v0, Lcom/b/a/a/c;->E:Z

    if-eqz v5, :cond_d

    if-eq v11, v2, :cond_d

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v0, v7, v2, v5, v13}, Lcom/b/a/a/c;->a(Landroid/graphics/Canvas;Ljava/lang/String;II)I

    move v2, v11

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    :goto_a
    iget v6, v0, Lcom/b/a/a/c;->D:I

    move/from16 v24, v2

    move-object v2, v3

    move v5, v6

    move/from16 v25, v8

    move v9, v15

    move-object/from16 v6, v17

    move/from16 v8, v18

    const/4 v3, 0x0

    move v15, v10

    move/from16 v10, v22

    :goto_b
    if-ge v3, v4, :cond_16

    if-eqz v6, :cond_13

    if-lt v10, v15, :cond_13

    invoke-virtual {v6}, Lcom/b/a/b/m;->a()I

    move-result v17

    add-int v15, v15, v17

    invoke-virtual {v6}, Lcom/b/a/b/m;->b()I

    move-result v6

    if-eq v9, v6, :cond_11

    const/4 v9, 0x1

    if-eq v6, v9, :cond_f

    const/16 v9, 0x1e

    if-eq v6, v9, :cond_e

    iget-object v9, v0, Lcom/b/a/a/c;->M:Landroid/graphics/Typeface;

    goto :goto_c

    :cond_e
    iget-object v9, v0, Lcom/b/a/a/c;->O:Landroid/graphics/Typeface;

    goto :goto_c

    :cond_f
    iget-object v9, v0, Lcom/b/a/a/c;->N:Landroid/graphics/Typeface;

    :goto_c
    if-eq v2, v9, :cond_10

    iget-object v2, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object v2, v9

    :cond_10
    iget-object v9, v0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    invoke-virtual {v9, v6}, Lcom/b/a/b/b;->a(I)I

    move-result v9

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v9, v23

    move-object/from16 v2, v26

    goto :goto_d

    :cond_11
    move/from16 v9, v23

    :goto_d
    if-ge v8, v9, :cond_12

    add-int/lit8 v17, v8, 0x1

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/b/a/b/m;

    move-object/from16 v27, v2

    :goto_e
    const/16 v18, 0x1

    goto :goto_f

    :cond_12
    move-object/from16 v27, v2

    move/from16 v17, v8

    move-object/from16 v8, v16

    goto :goto_e

    :cond_13
    move/from16 v17, v9

    move/from16 v9, v23

    const/16 v18, 0x1

    move-object/from16 v27, v2

    move/from16 v29, v8

    move-object v8, v6

    move/from16 v6, v17

    move/from16 v17, v29

    :goto_f
    iget v2, v0, Lcom/b/a/a/c;->i:I

    if-ne v10, v2, :cond_14

    invoke-direct {v0, v7, v5, v13}, Lcom/b/a/a/c;->a(Landroid/graphics/Canvas;II)V

    :cond_14
    iget-object v2, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v2, v10}, Lcom/b/a/b/f;->charAt(I)C

    move-result v2

    move/from16 v28, v4

    iget-object v4, v0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v4, v10}, Lcom/b/a/a/c$a;->b(I)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-direct {v0, v7, v2, v5, v13}, Lcom/b/a/a/c;->b(Landroid/graphics/Canvas;CII)I

    move-result v2

    :goto_10
    add-int/2addr v5, v2

    goto :goto_11

    :cond_15
    invoke-direct {v0, v7, v2, v5, v13}, Lcom/b/a/a/c;->a(Landroid/graphics/Canvas;CII)I

    move-result v2

    goto :goto_10

    :goto_11
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v23, v9

    move-object/from16 v2, v27

    move/from16 v4, v28

    move v9, v6

    move-object v6, v8

    move/from16 v8, v17

    goto/16 :goto_b

    :cond_16
    move/from16 v17, v9

    move/from16 v9, v23

    const/16 v18, 0x1

    iget-object v3, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Lcom/b/a/b/f;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_17

    add-int/lit8 v11, v11, 0x1

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/a/c;->a()I

    move-result v3

    add-int/2addr v13, v3

    iget v3, v0, Lcom/b/a/a/c;->C:I

    if-le v5, v3, :cond_18

    iput v5, v0, Lcom/b/a/a/c;->C:I

    :cond_18
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    move/from16 v18, v8

    move/from16 v23, v9

    move/from16 v22, v10

    move v10, v15

    move/from16 v15, v17

    move/from16 v2, v24

    move/from16 v8, v25

    const/16 v9, 0x1e

    move-object/from16 v17, v6

    goto/16 :goto_9

    :cond_19
    :goto_12
    invoke-direct/range {p0 .. p1}, Lcom/b/a/a/c;->e(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/a/c;->isWordWrap()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-direct/range {p0 .. p1}, Lcom/b/a/a/c;->d(Landroid/graphics/Canvas;)V

    :cond_1a
    return-void
.end method

.method static synthetic d(Lcom/b/a/a/c;)I
    .locals 0

    iget p0, p0, Lcom/b/a/a/c;->A:I

    return p0
.end method

.method private d(II)V
    .locals 4

    const/4 v0, 0x0

    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid startRow and/or endRow"

    invoke-static {v1, v2}, Lcom/b/a/b/q;->a(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v1}, Lcom/b/a/a/g;->a()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v3

    mul-int p1, p1, v3

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v3

    add-int/2addr p1, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v3

    mul-int p2, p2, v3

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v3

    add-int/2addr p2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    invoke-super {p0, v0, p1, v2, p2}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-static {}, Lcom/b/a/b/k;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v5

    mul-int v4, v4, v5

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v6

    mul-int v5, v5, v6

    if-lt v5, v2, :cond_1

    if-le v4, v1, :cond_2

    goto :goto_0

    :cond_2
    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v6}, Lcom/b/a/a/c;->b(I)Lcom/b/a/b/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/a/b/m;->a()I

    move-result v6

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Lcom/b/a/a/c;->b(I)Lcom/b/a/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/b/m;->a()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v9, v3

    int-to-float v8, v4

    int-to-float v10, v5

    iget-object v11, p0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/b/a/a/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->V:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/b/a/a/c;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/a/c;->A:I

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->getPaintBaseline(I)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    sget-object v4, Lcom/b/a/b/b$a;->h:Lcom/b/a/b/b$a;

    invoke-virtual {v3, v4}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/b/a/a/c;->C:I

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/b/a/a/c;->a(Landroid/graphics/Canvas;III)V

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private final e(II)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f(I)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const p1, 0x7fffffff

    const-string v0, "MeasureSpec cannot be UNSPECIFIED. Setting dimensions to max."

    invoke-static {v0}, Lcom/b/a/b/q;->a(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method static synthetic f(Lcom/b/a/a/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->W:Ljava/lang/Runnable;

    return-object p0
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/a/c;->ac:Z

    new-instance v0, Lcom/b/a/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/a/c$a;-><init>(Lcom/b/a/a/c;Lcom/b/a/a/c$1;)V

    iput-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/b/a/a/c;->G:Landroid/text/ClipboardManager;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    sget v2, Lcom/b/a/a/c;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    sget v2, Lcom/b/a/a/c;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0, v1}, Lcom/b/a/a/c;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/b/a/a/c;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Lcom/b/a/a/c;->setHapticFeedbackEnabled(Z)V

    new-instance v0, Lcom/b/a/a/c$6;

    invoke-direct {v0, p0}, Lcom/b/a/a/c$6;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->y:Lcom/b/a/b/n;

    new-instance v0, Lcom/b/a/a/c$7;

    invoke-direct {v0, p0}, Lcom/b/a/a/c$7;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->z:Lcom/b/a/a/e;

    new-instance v0, Lcom/b/a/a/c$8;

    invoke-direct {v0, p0}, Lcom/b/a/a/c$8;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->K:Lcom/b/a/a/f;

    invoke-direct {p0}, Lcom/b/a/a/c;->g()V

    new-instance v0, Lcom/b/a/a/b;

    invoke-direct {v0, p0}, Lcom/b/a/a/b;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->F:Lcom/b/a/a/b;

    new-instance v0, Lcom/b/a/a/a;

    invoke-direct {v0, p0}, Lcom/b/a/a/a;-><init>(Lcom/b/a/a/c;)V

    iput-object v0, p0, Lcom/b/a/a/c;->s:Lcom/b/a/a/a;

    iget-object v0, p0, Lcom/b/a/a/c;->s:Lcom/b/a/a/a;

    invoke-static {}, Lcom/b/a/b/i;->g()Lcom/b/a/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/a;->a(Lcom/b/a/b/h;)V

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    return-void
.end method

.method static synthetic g(Lcom/b/a/a/c;)Lcom/b/a/a/b;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->F:Lcom/b/a/a/b;

    return-object p0
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/c;->i:I

    iput v0, p0, Lcom/b/a/a/c;->A:I

    iput v0, p0, Lcom/b/a/a/c;->C:I

    iget-object v1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v1, v0}, Lcom/b/a/a/c$a;->c(Z)V

    iget-object v1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v1}, Lcom/b/a/a/c$a;->f()V

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->h()V

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentWidth()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->j()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->k()V

    :cond_1
    iget-object v1, p0, Lcom/b/a/a/c;->y:Lcom/b/a/b/n;

    invoke-interface {v1, v0}, Lcom/b/a/b/n;->a(I)V

    invoke-virtual {p0, v0, v0}, Lcom/b/a/a/c;->scrollTo(II)V

    return-void
.end method

.method private g(I)V
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid startRow"

    invoke-static {v1, v2}, Lcom/b/a/b/q;->a(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v1}, Lcom/b/a/a/g;->a()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v3

    mul-int p1, p1, v3

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v3

    add-int/2addr p1, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-super {p0, v0, p1, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lcom/b/a/a/c;->A:I

    iget v1, p0, Lcom/b/a/a/c;->A:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/c;->d(II)V

    return-void
.end method

.method private h(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v2}, Lcom/b/a/b/f;->g()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Invalid charOffset given"

    invoke-static {v2, v3}, Lcom/b/a/b/q;->a(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->i(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->j(I)I

    move-result p1

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/b/a/a/c;->scrollBy(II)V

    return v1
.end method

.method static synthetic h(Lcom/b/a/a/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/b/a/a/c;->ac:Z

    return p0
.end method

.method private i(I)I
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/b/a/b/f;->b(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v0

    mul-int p1, p1, v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentHeight()I

    move-result v1

    add-int/2addr p1, v1

    if-le v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentHeight()I

    move-result p1

    sub-int p1, v0, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic i(Lcom/b/a/a/c;)Lcom/b/a/a/f;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->K:Lcom/b/a/a/f;

    return-object p0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget v1, p0, Lcom/b/a/a/c;->j:I

    invoke-virtual {v0, v1}, Lcom/b/a/b/f;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget v2, p0, Lcom/b/a/a/c;->k:I

    invoke-virtual {v1, v2}, Lcom/b/a/b/f;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/c;->d(II)V

    return-void
.end method

.method private j(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->b(I)Lcom/b/a/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/b/m;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/b/a/b/m;->b()I

    move-result p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentWidth()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/b/a/a/c;->S:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/b/a/a/c;->S:I

    sub-int p1, v0, p1

    :cond_1
    return p1
.end method

.method static synthetic j(Lcom/b/a/a/c;)I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/a/c;->A:I

    return v0
.end method

.method static synthetic k(Lcom/b/a/a/c;)Lcom/b/a/b/n;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->y:Lcom/b/a/b/n;

    return-object p0
.end method

.method static synthetic l(Lcom/b/a/a/c;)I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/a/c;->A:I

    return v0
.end method

.method static synthetic m(Lcom/b/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/a/c;->h()V

    return-void
.end method

.method static synthetic n(Lcom/b/a/a/c;)Lcom/b/a/a/c$b;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->x:Lcom/b/a/a/c$b;

    return-object p0
.end method

.method static synthetic o(Lcom/b/a/a/c;)Lcom/b/a/a/e;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/c;->z:Lcom/b/a/a/e;

    return-object p0
.end method

.method static synthetic p(Lcom/b/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/a/c;->i()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v0

    return v1
.end method

.method protected a(I)I
    .locals 4

    iget-boolean v0, p0, Lcom/b/a/a/c;->o:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/b/a/a/c;->l:I

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    const-string v1, "\u00b7"

    const/4 v2, 0x0

    const-string v3, "\u00b7"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    mul-int p1, p1, v0

    return p1

    :cond_0
    iget v0, p0, Lcom/b/a/a/c;->D:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/b/a/a/c;->aa:I

    div-int/2addr p1, v0

    iget v0, p0, Lcom/b/a/a/c;->l:I

    rem-int/2addr p1, v0

    iget v0, p0, Lcom/b/a/a/c;->l:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/b/a/a/c;->aa:I

    mul-int v0, v0, p1

    return v0
.end method

.method a(II)I
    .locals 9

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v0

    div-int/2addr p2, v0

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->f()I

    move-result v0

    const/4 v1, 0x1

    if-le p2, v0, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->g()I

    move-result p1

    sub-int/2addr p1, v1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, p2}, Lcom/b/a/b/f;->d(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-gez p1, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v2, p2}, Lcom/b/a/b/f;->a(I)Ljava/lang/String;

    move-result-object p2

    iget v2, p0, Lcom/b/a/a/c;->D:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v6, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_0
    const/4 v5, 0x2

    new-array v8, v5, [C

    aput-char v7, v8, v4

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v8, v1

    iget-object v7, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v4, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v6, v5

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/b/a/a/c;->getSpaceAdvance()I

    move-result v7

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/b/a/a/c;->getEOLAdvance()I

    move-result v7

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v6}, Lcom/b/a/a/c;->a(I)I

    move-result v7

    :goto_1
    add-int/2addr v6, v7

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v7}, Lcom/b/a/a/c;->getCharAdvance(C)I

    move-result v7

    goto :goto_1

    :goto_2
    if-lt v6, p1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v2, p1, :cond_6

    add-int/2addr v0, v2

    return v0

    :cond_6
    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/b/a/a/c;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method b(II)I
    .locals 10

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v0

    div-int/2addr p2, v0

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, p2}, Lcom/b/a/b/f;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-ltz v0, :cond_4

    if-gez p1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v2, p2}, Lcom/b/a/b/f;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_0
    const/4 v5, 0x2

    new-array v9, v5, [C

    aput-char v7, v9, v3

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v9, v8

    iget-object v7, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v3, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v6, v5

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/b/a/a/c;->getSpaceAdvance()I

    move-result v7

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/b/a/a/c;->getEOLAdvance()I

    move-result v7

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v6}, Lcom/b/a/a/c;->a(I)I

    move-result v7

    :goto_1
    add-int/2addr v6, v7

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v7}, Lcom/b/a/a/c;->getCharAdvance(C)I

    move-result v7

    goto :goto_1

    :goto_2
    if-lt v6, p1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_4

    add-int/2addr v0, v4

    return v0

    :cond_4
    return v1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method protected b(I)Lcom/b/a/b/m;
    .locals 11

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/b/a/b/f;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1, v0}, Lcom/b/a/b/f;->d(I)I

    move-result v1

    iget v2, p0, Lcom/b/a/a/c;->D:I

    iget v3, p0, Lcom/b/a/a/c;->D:I

    iget-object v4, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v4, v0}, Lcom/b/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v3

    const/4 v7, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_0
    add-int v8, v1, v2

    if-gt v8, p1, :cond_1

    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    if-eqz v7, :cond_0

    move v3, v6

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_0
    const/4 v7, 0x2

    new-array v9, v7, [C

    aput-char v3, v9, v5

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v9, v8

    iget-object v3, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v3, v9, v5, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v6

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/b/a/a/c;->getSpaceAdvance()I

    move-result v3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/b/a/a/c;->getEOLAdvance()I

    move-result v3

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v6}, Lcom/b/a/a/c;->a(I)I

    move-result v3

    :goto_1
    add-int/2addr v3, v6

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/b/a/a/c;->getCharAdvance(C)I

    move-result v3

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v10, v6

    move v6, v3

    move v3, v10

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/b/a/b/m;

    invoke-direct {p1, v3, v6}, Lcom/b/a/b/m;-><init>(II)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/b/a/a/c;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/b/a/a/c;->V:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/b/a/a/c;->W:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method c(I)Landroid/graphics/Rect;
    .locals 4

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->g()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/b/a/b/f;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->b(I)Lcom/b/a/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/b/m;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/b/a/b/m;->b()I

    move-result p1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v0, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method c(II)V
    .locals 9

    iget-object v0, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/b/a/a/c;->getMaxScrollY()I

    move-result v8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/b/a/a/c;->postInvalidate()V

    return-void
.end method

.method protected c()Z
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->A:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelSpanning()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->b()V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/c;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/b/a/a/c;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copy()V
    .locals 2

    iget v0, p0, Lcom/b/a/a/c;->j:I

    iget v1, p0, Lcom/b/a/a/c;->k:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    iget-object v1, p0, Lcom/b/a/a/c;->G:Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Lcom/b/a/a/c$a;->b(Landroid/text/ClipboardManager;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->selectText(Z)V

    return-void
.end method

.method public copy(Landroid/text/ClipboardManager;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/c$a;->b(Landroid/text/ClipboardManager;)V

    return-void
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-super {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_4
    return-object v0
.end method

.method public createDocumentProvider()Lcom/b/a/b/f;
    .locals 2

    new-instance v0, Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-direct {v0, v1}, Lcom/b/a/b/f;-><init>(Lcom/b/a/b/f;)V

    return-object v0
.end method

.method public cut()V
    .locals 2

    iget v0, p0, Lcom/b/a/a/c;->j:I

    iget v1, p0, Lcom/b/a/a/c;->k:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    iget-object v1, p0, Lcom/b/a/a/c;->G:Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Lcom/b/a/a/c$a;->a(Landroid/text/ClipboardManager;)V

    :cond_0
    return-void
.end method

.method public cut(Landroid/text/ClipboardManager;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/c$a;->a(Landroid/text/ClipboardManager;)V

    return-void
.end method

.method protected d()Z
    .locals 3

    iget v0, p0, Lcom/b/a/a/c;->A:I

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->f()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method d(I)Z
    .locals 3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p1, "Invalid scroll direction"

    invoke-static {p1}, Lcom/b/a/b/q;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/b/a/a/c;->W:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/b/a/a/c;->e()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/b/a/a/c;->A:I

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget v2, p0, Lcom/b/a/a/c;->i:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/b/a/b/f;->b(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->W:Ljava/lang/Runnable;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/b/a/a/c;->V:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget p1, p0, Lcom/b/a/a/c;->i:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/b/a/a/c;->A:I

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget v2, p0, Lcom/b/a/a/c;->i:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/b/a/b/f;->b(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->V:Ljava/lang/Runnable;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/b/a/a/c;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/b/a/a/c;->d()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->T:Ljava/lang/Runnable;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/b/a/a/c;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/b/a/a/c;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->U:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->post(Ljava/lang/Runnable;)Z

    return v0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected e(I)I
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/b/a/b/f;->b(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid char offset given to getColumn"

    invoke-static {v1, v2}, Lcom/b/a/b/q;->a(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1, v0}, Lcom/b/a/b/f;->d(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method protected e()Z
    .locals 3

    iget v0, p0, Lcom/b/a/a/c;->i:I

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->g()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public focusCaret()V
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, v0}, Lcom/b/a/a/c;->h(I)Z

    return-void
.end method

.method public focusSelectionEnd()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/a/c$a;->d(Z)V

    return-void
.end method

.method public focusSelectionStart()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/a/c$a;->d(Z)V

    return-void
.end method

.method public format()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->selectText(Z)V

    new-instance v1, Lcom/b/a/b/f;

    iget-object v2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-direct {v1, v2}, Lcom/b/a/b/f;-><init>(Lcom/b/a/b/f;)V

    iget v2, p0, Lcom/b/a/a/c;->q:I

    invoke-static {v1, v2}, Lcom/b/a/b/a;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v2}, Lcom/b/a/b/f;->d()V

    iget-object v2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v3}, Lcom/b/a/b/f;->g()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/b/a/b/f;->a(IIJ)V

    iget-object v2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/b/a/b/f;->a([CIJ)V

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->e()V

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->h()V

    invoke-virtual {p0}, Lcom/b/a/a/c;->respan()V

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    return-void
.end method

.method public getAdvance(C)I
    .locals 5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-char v1, p0, Lcom/b/a/a/c;->P:C

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v3, v1, [C

    iget-char v4, p0, Lcom/b/a/a/c;->P:C

    aput-char v4, v3, v0

    aput-char p1, v3, v2

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    :goto_0
    float-to-int v0, p1

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/b/a/a/c;->getSpaceAdvance()I

    move-result v0

    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/b/a/a/c;->getEOLAdvance()I

    move-result v0

    return v0

    :sswitch_2
    invoke-virtual {p0}, Lcom/b/a/a/c;->getTabAdvance()I

    move-result v0

    return v0

    :cond_0
    new-array v1, v2, [C

    aput-char p1, v1, v0

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    goto :goto_0

    :sswitch_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0x20 -> :sswitch_0
        0xd83c -> :sswitch_3
        0xd83d -> :sswitch_3
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method public getAdvance(CI)I
    .locals 4

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-char p2, p0, Lcom/b/a/a/c;->P:C

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    new-array v2, p2, [C

    iget-char v3, p0, Lcom/b/a/a/c;->P:C

    aput-char v3, v2, v0

    aput-char p1, v2, v1

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    :goto_0
    float-to-int v0, p1

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/b/a/a/c;->getSpaceAdvance()I

    move-result v0

    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/b/a/a/c;->getEOLAdvance()I

    move-result v0

    return v0

    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/b/a/a/c;->a(I)I

    move-result v0

    return v0

    :cond_0
    new-array p2, v1, [C

    aput-char p1, p2, v0

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    goto :goto_0

    :sswitch_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0x20 -> :sswitch_0
        0xd83c -> :sswitch_3
        0xd83d -> :sswitch_3
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method public getAutoIndentWidth()I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->q:I

    return v0
.end method

.method public getCaretPosition()I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->i:I

    return v0
.end method

.method public getCaretRow()I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->A:I

    return v0
.end method

.method public getCaretX()I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->I:I

    return v0
.end method

.method public getCaretY()I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->J:I

    return v0
.end method

.method public getCharAdvance(C)I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getColorScheme()Lcom/b/a/b/b;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    return-object v0
.end method

.method protected getContentHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getContentWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getEOLAdvance()I
    .locals 5

    iget-boolean v0, p0, Lcom/b/a/a/c;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    const-string v2, "\u21b5"

    const-string v3, "\u21b5"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    sget v0, Lcom/b/a/a/c;->a:F

    iget-object v2, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    const-string v3, " "

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    mul-float v0, v0, v1

    goto :goto_0
.end method

.method public getLeftOffset()I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->D:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->g()I

    move-result v0

    return v0
.end method

.method getMaxScrollX()I
    .locals 3

    invoke-virtual {p0}, Lcom/b/a/a/c;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/a/c;->D:I

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/b/a/a/c;->C:I

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v2}, Lcom/b/a/a/g;->a()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/b/a/a/c;->S:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getMaxScrollY()I
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v1}, Lcom/b/a/a/g;->a()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getNumVisibleRows()I
    .locals 4

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getPaintBaseline(I)I
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v1

    mul-int p1, p1, v1

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final getRowWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getContentWidth()I

    move-result v0

    iget v1, p0, Lcom/b/a/a/c;->D:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->k:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/b/a/a/c;->i:I

    return v0

    :cond_0
    iget v0, p0, Lcom/b/a/a/c;->k:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->j:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/b/a/a/c;->i:I

    return v0

    :cond_0
    iget v0, p0, Lcom/b/a/a/c;->j:I

    return v0
.end method

.method protected getSpaceAdvance()I
    .locals 4

    iget-boolean v0, p0, Lcom/b/a/a/c;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    const-string v1, "\u00b7"

    const/4 v2, 0x0

    const-string v3, "\u00b7"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/b/a/a/c;->aa:I

    return v0
.end method

.method protected getTabAdvance()I
    .locals 5

    iget-boolean v0, p0, Lcom/b/a/a/c;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/a/c;->l:I

    iget-object v1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    const-string v2, "\u00b7"

    const/4 v3, 0x0

    const-string v4, "\u00b7"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-int v1, v1

    :goto_0
    mul-int v0, v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/b/a/a/c;->l:I

    iget v1, p0, Lcom/b/a/a/c;->aa:I

    goto :goto_0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->L:I

    return v0
.end method

.method public getUiState()Landroid/os/Parcelable;
    .locals 1

    new-instance v0, Lcom/b/a/a/c$c;

    invoke-direct {v0, p0}, Lcom/b/a/a/c$c;-><init>(Lcom/b/a/a/c;)V

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lcom/b/a/a/c;->H:F

    return v0
.end method

.method public hasLayout()Z
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public inSelectionRange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/c$a;->b(I)Z

    move-result p1

    return p1
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/c;->ac:Z

    return v0
.end method

.method public isEdited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/c;->f:Z

    return v0
.end method

.method public isFlingScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSaveEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isSelectText()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->g()Z

    move-result v0

    return v0
.end method

.method public final isSelectText2()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->h()Z

    move-result v0

    return v0
.end method

.method public isShowLineNumbers()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/c;->E:Z

    return v0
.end method

.method public isWordWrap()Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->j()Z

    move-result v0

    return v0
.end method

.method public moveCaret(I)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/c$a;->a(I)V

    return-void
.end method

.method public moveCaretDown()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->c()V

    return-void
.end method

.method public moveCaretLeft()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/a/c$a;->b(Z)V

    return-void
.end method

.method public moveCaretRight()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/a/c$a;->a(Z)V

    return-void
.end method

.method public moveCaretUp()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->d()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const v0, 0x20001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x50000006

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object p1, p0, Lcom/b/a/a/c;->x:Lcom/b/a/a/c$b;

    if-nez p1, :cond_0

    new-instance p1, Lcom/b/a/a/c$b;

    invoke-direct {p1, p0, p0}, Lcom/b/a/a/c$b;-><init>(Lcom/b/a/a/c;Lcom/b/a/a/c;)V

    iput-object p1, p0, Lcom/b/a/a/c;->x:Lcom/b/a/a/c$b;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c;->x:Lcom/b/a/a/c$b;

    invoke-virtual {p1}, Lcom/b/a/a/c$b;->a()V

    :goto_0
    iget-object p1, p0, Lcom/b/a/a/c;->x:Lcom/b/a/a/c$b;

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/b/a/a/c;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/b/a/a/c;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->c(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v0, p1}, Lcom/b/a/a/g;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/b/a/a/c;->h()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-direct {p0, v0, p1}, Lcom/b/a/a/c;->a(FF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/b/a/a/c;->ac:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v2, p1}, Lcom/b/a/a/g;->a(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/b/a/a/c;->ad:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    iget-object v3, p0, Lcom/b/a/a/c;->ad:Landroid/view/MotionEvent;

    iget v4, p0, Lcom/b/a/a/c;->ae:F

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/b/a/a/c;->af:F

    sub-float/2addr v5, v1

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/b/a/a/g;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    :goto_0
    iput v0, p0, Lcom/b/a/a/c;->ae:F

    iput v1, p0, Lcom/b/a/a/c;->af:F

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/a/g;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lcom/b/a/a/d;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/c;->a(ILandroid/view/KeyEvent;)V

    return v1

    :cond_1
    const/16 v0, 0x3f

    const v2, 0xef01

    if-eq p1, v0, :cond_9

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/b/a/a/d;->a(Landroid/view/KeyEvent;)C

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-boolean p1, p0, Lcom/b/a/a/c;->r:Z

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/b/a/a/c;->a(C)V

    return v1

    :cond_4
    invoke-direct {p0, v0}, Lcom/b/a/a/c;->b(C)V

    return v1

    :cond_5
    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/b/a/a/c;->r:Z

    if-eqz p1, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-boolean p1, p0, Lcom/b/a/a/c;->r:Z

    if-nez p1, :cond_8

    sget-object p1, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1, v0}, Lcom/b/a/a/c$a;->a(C)V

    :cond_8
    return v1

    :cond_9
    :goto_0
    sget-object p1, Lcom/b/a/a/c;->u:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/c;->a(Ljava/lang/String;Z)V

    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/b/a/a/c;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/b/a/a/d;->a(Landroid/view/KeyEvent;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget v3, p0, Lcom/b/a/a/c;->i:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/b/a/b/f;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/b/a/a/c$a;->a(C)V

    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/b/a/a/c$a;->a(C)V

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/a/g;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/b/a/a/c;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/b/a/a/c;->L:I

    iget-boolean v0, p0, Lcom/b/a/a/c;->Q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/c;->respan()V

    :cond_0
    if-lez p4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/b/a/a/c;->Q:Z

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    iget-object v0, p0, Lcom/b/a/a/c;->s:Lcom/b/a/a/a;

    invoke-virtual {p0}, Lcom/b/a/a/c;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/b/a/a/a;->c(I)V

    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->f(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/b/a/a/c;->f(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/c;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->k()V

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->e()V

    if-ge p2, p4, :cond_1

    iget p1, p0, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->h(I)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/b/a/a/c;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v0, p1}, Lcom/b/a/a/g;->b(Landroid/view/MotionEvent;)Z

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/b/a/a/c;->e(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c;->requestFocus()Z

    :cond_1
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v2, v1}, Lcom/b/a/a/c$a;->a(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez v0, :cond_1

    iget-object v2, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v2, v1}, Lcom/b/a/a/c$a;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->c()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-gez p1, :cond_3

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->d()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public paste()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->G:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/a/c$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public paste(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/c$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x100

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/b/a/a/c;->moveCaretUp()V

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/b/a/a/c;->moveCaretLeft()V

    return v2

    :cond_4
    const-string p1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/b/a/a/c;->moveCaretDown()V

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/b/a/a/c;->moveCaretRight()V

    return v2
.end method

.method public replaceText(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->d()V

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/a/c$a;->a(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->f()V

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->e()V

    return-void
.end method

.method public respan()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->a()V

    return-void
.end method

.method public restoreUiState(Landroid/os/Parcelable;)V
    .locals 3

    check-cast p1, Lcom/b/a/a/c$c;

    iget v0, p1, Lcom/b/a/a/c$c;->a:I

    iget-boolean v1, p1, Lcom/b/a/a/c$c;->d:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/b/a/a/c$c;->e:I

    iget p1, p1, Lcom/b/a/a/c$c;->f:I

    new-instance v2, Lcom/b/a/a/c$10;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/b/a/a/c$10;-><init>(Lcom/b/a/a/c;III)V

    invoke-virtual {p0, v2}, Lcom/b/a/a/c;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p1, Lcom/b/a/a/c$2;

    invoke-direct {p1, p0, v0}, Lcom/b/a/a/c$2;-><init>(Lcom/b/a/a/c;I)V

    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public selectAll()V
    .locals 4

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->g()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/b/a/a/c$a;->a(IIZZ)V

    return-void
.end method

.method public selectText(Z)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/b/a/a/c;->i()V

    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/b/a/a/c$a;->c(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {v0}, Lcom/b/a/a/c$a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/b/a/a/c;->h()V

    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAutoComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/a/c;->t:Z

    return-void
.end method

.method public setAutoIndent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/a/c;->p:Z

    return-void
.end method

.method public setAutoIndentWidth(I)V
    .locals 0

    iput p1, p0, Lcom/b/a/a/c;->q:I

    return-void
.end method

.method public setBoldTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c;->N:Landroid/graphics/Typeface;

    return-void
.end method

.method public setChirality(Z)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v0, p1}, Lcom/b/a/a/g;->a(Z)V

    return-void
.end method

.method public setColorScheme(Lcom/b/a/b/b;)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/a/c;->m:Lcom/b/a/b/b;

    iget-object v0, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    invoke-virtual {v0, p1}, Lcom/b/a/a/g;->a(Lcom/b/a/b/b;)V

    sget-object v0, Lcom/b/a/b/b$a;->b:Lcom/b/a/b/b$a;

    invoke-virtual {p1, v0}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b$a;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->setBackgroundColor(I)V

    return-void
.end method

.method public setDocumentProvider(Lcom/b/a/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-direct {p0}, Lcom/b/a/a/c;->g()V

    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->b()V

    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->a()V

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    iget-boolean p1, p0, Lcom/b/a/a/c;->ac:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p0, p1}, Lcom/b/a/a/c;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEdited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/a/c;->f:Z

    return-void
.end method

.method public setHighlightCurrentRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/a/c;->n:Z

    invoke-direct {p0}, Lcom/b/a/a/c;->h()V

    return-void
.end method

.method public setItalicTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c;->O:Landroid/graphics/Typeface;

    return-void
.end method

.method public setLongPressCaps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/a/c;->r:Z

    return-void
.end method

.method public setNavigationMethod(Lcom/b/a/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c;->g:Lcom/b/a/a/g;

    return-void
.end method

.method public setNonPrintingCharVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/c;->o:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/b/a/a/c;->o:Z

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->k()V

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->e()V

    iget p1, p0, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->h(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/b/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c;->z:Lcom/b/a/a/e;

    return-void
.end method

.method public setRowListener(Lcom/b/a/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c;->y:Lcom/b/a/b/n;

    return-void
.end method

.method public setSelection(II)V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/b/a/a/c$a;->a(IIZZ)V

    return-void
.end method

.method public setSelectionRange(II)V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/b/a/a/c$a;->a(IIZZ)V

    return-void
.end method

.method public setShowLineNumbers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/a/c;->E:Z

    return-void
.end method

.method public setTabSpaces(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/b/a/a/c;->l:I

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->k()V

    :cond_1
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->e()V

    iget p1, p0, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->h(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    :cond_2
    return-void
.end method

.method public setTextSize(I)V
    .locals 10

    const/16 v0, 0x8

    if-le p1, v0, :cond_2

    const/16 v0, 0x50

    if-ge p1, v0, :cond_2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result v1

    int-to-double v1, v1

    const/16 v3, 0x61

    invoke-virtual {p0, v3}, Lcom/b/a/a/c;->getAdvance(C)I

    move-result v4

    int-to-double v4, v4

    sget v6, Lcom/b/a/a/c;->d:I

    div-int/2addr p1, v6

    int-to-float p1, p1

    iput p1, p0, Lcom/b/a/a/c;->H:F

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->k()V

    :cond_1
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->e()V

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result p1

    int-to-double v6, p1

    invoke-virtual {p0, v3}, Lcom/b/a/a/c;->getAdvance(C)I

    move-result p1

    int-to-double v8, p1

    div-double/2addr v8, v4

    mul-double v6, v6, v8

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result p1

    int-to-double v3, p1

    invoke-virtual {p0}, Lcom/b/a/a/c;->a()I

    move-result p1

    int-to-double v8, p1

    div-double/2addr v8, v1

    mul-double v3, v3, v8

    double-to-int p1, v6

    double-to-int v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/c;->scrollTo(II)V

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/b/a/a/c;->S:I

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/b/a/a/c;->aa:I

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    :cond_2
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/a/c;->M:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/c;->N:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/c;->O:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->k()V

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->e()V

    iget p1, p0, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->h(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    :cond_1
    return-void
.end method

.method public setWordWrap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/b/a/b/f;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/b/a/a/c;->C:I

    invoke-virtual {p0, p1, p1}, Lcom/b/a/a/c;->scrollTo(II)V

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->e()V

    iget p1, p0, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, p1}, Lcom/b/a/a/c;->h(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    :cond_1
    return-void
.end method

.method public setZoom(F)V
    .locals 5

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-lez v4, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/b/a/a/c;->H:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/b/a/a/c;->H:F

    sget v0, Lcom/b/a/a/c;->d:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/b/a/a/c;->R:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->k()V

    :cond_1
    iget-object p1, p0, Lcom/b/a/a/c;->w:Lcom/b/a/a/c$a;

    invoke-virtual {p1}, Lcom/b/a/a/c$a;->e()V

    iget-object p1, p0, Lcom/b/a/a/c;->B:Landroid/graphics/Paint;

    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/b/a/a/c;->S:I

    invoke-virtual {p0}, Lcom/b/a/a/c;->invalidate()V

    :cond_2
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/b/a/a/c;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/b/a/a/c;->ab:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0xfa

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-virtual {v2, v1, v0, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/b/a/a/c;->postInvalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/c;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/b/a/a/c;->ab:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/b/a/a/c;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/c;->smoothScrollBy(II)V

    return-void
.end method

.method public stopFlingScrolling()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c;->v:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method
