.class final enum Lcom/android/cglib/dx/UnaryOp$2;
.super Lcom/android/cglib/dx/UnaryOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/UnaryOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/cglib/dx/UnaryOp;-><init>(Ljava/lang/String;ILcom/android/cglib/dx/UnaryOp$1;)V

    return-void
.end method


# virtual methods
.method rop(Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/c/b/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;)",
            "Lcom/android/cglib/dx/c/b/p;"
        }
    .end annotation

    iget-object p1, p1, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {p1}, Lcom/android/cglib/dx/c/b/r;->f(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/p;

    move-result-object p1

    return-object p1
.end method
