.class public final Lcom/b/a/b/m;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/b/a/b/m;->a:I

    iput p2, p0, Lcom/b/a/b/m;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/b/a/b/m;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/b/a/b/m;->a:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/b/a/b/m;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/b/a/b/m;->b:I

    return-void
.end method
