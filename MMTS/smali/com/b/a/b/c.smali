.class public Lcom/b/a/b/c;
.super Lcom/b/a/b/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/b/a/b/b;-><init>()V

    sget-object v0, Lcom/b/a/b/b$a;->a:Lcom/b/a/b/b$a;

    const v1, -0x2f2d2d

    invoke-virtual {p0, v0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/b$a;I)V

    sget-object v0, Lcom/b/a/b/b$a;->b:Lcom/b/a/b/b$a;

    const v1, -0xfbfbfc

    invoke-virtual {p0, v0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/b$a;I)V

    sget-object v0, Lcom/b/a/b/b$a;->i:Lcom/b/a/b/b$a;

    const v1, -0x9f9fa0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/b$a;I)V

    return-void
.end method
