.class public Lcom/android/cglib/dx/b/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/android/cglib/dx/b/a/a;

.field private final d:Lcom/android/cglib/dx/b/a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/cglib/dx/b/a/a;Lcom/android/cglib/dx/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/cglib/dx/b/b$a;->a:I

    iput-object p2, p0, Lcom/android/cglib/dx/b/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/cglib/dx/b/b$a;->c:Lcom/android/cglib/dx/b/a/a;

    iput-object p4, p0, Lcom/android/cglib/dx/b/b$a;->d:Lcom/android/cglib/dx/b/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/b/b$a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/b/b$a;->b:Ljava/lang/String;

    return-object v0
.end method
